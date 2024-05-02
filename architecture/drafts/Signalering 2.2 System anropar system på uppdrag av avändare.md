
# Signering (2.2) System anropar system, på uppdrag av användare
## Flödesdiagram

```mermaid
sequenceDiagram
    autonumber
    box OrgA
        participant Legitimeringstjänst
        participant E-tjänst as Klient
    end
    box OrgB
        participant AT-B as Auktorisationstjänst
        participant API
    end
    box Ena
        participant cMetadata as Metadata
    end
    Rect rgb(240, 240, 240)
        Note over E-tjänst, cMetadata: 2.2 System anropar system, på uppdrag av användare
    end

    cMetadata-->>AT-B: sync

    Note right of Legitimeringstjänst: SAML2 Assertion
    Legitimeringstjänst-->>E-tjänst: Identitetsintyg för M

    Rect rgb(240, 240, 240)
        Note right of E-tjänst: client_JWT: RFC7519
        E-tjänst->>E-tjänst: Tillverka och signera JWT<br> för klientidentitet

        Note right of E-tjänst: user_JWT: RFC7519
        E-tjänst->>E-tjänst: Tillverka och signera JWT<br> för användarinformation

        Note right of E-tjänst: Klient: RFC7523<br>JWT profile Auth grants &<br>Client auth
        E-tjänst->>AT-B: Begär åtkomstintyg(client_JTW, user_JWT)
        AT-B->>AT-B: Verifiera klient<br>Åtkomstbeslut/<br>Ställ ut access token
        Note left of AT-B: Access token: RFC9068<br>JWT Profile Access tokens<br/>(Rekommendation)
        AT-B-->>E-tjänst: Åtkomstintyg
    end
    Note right of E-tjänst: TLS (ej mTLS - <br>token identifierar klient)
    Note right of E-tjänst: Åtkomstintyg: RFC6750<br/> Bearer Token Usage
    E-tjänst->>API: Begär information(Åtkomstintyg)

```


1. Centralt metadata för klienter syncas regelbundet mot lokal kopia. En förutsättning för detta är att klienter kan registreras i metadata under viss organisation för att senare kunna verifieras. Ej beskriven här, men en förutsättning för detta.

2. Inloggning för användare i Klient. IDP autentiserar och ställer ut identitetsintyg (kan även innehålla behörighetsinformation, men behöver inte göra det). Ej beskriven närmare här, utan förenklat till "SAML Assertion finns i klienten". I framtiden kan detta även vara OIDC-intyg, men här och nu är det vanligast med SAML-grejer och det är det vi behöver utgå ifrån. 

3. Klient tillverkar JWT (RFC7515) för klientidentitet och signerar denna till en JWS (RFC7519). Claims enligt RFC75201 och RFC7523, "client_JWT":
~~~markdown
{
    "iss" : "{client_id}",
    "sub" : "{client_id}",
    "aud" : "{token_endpoint}",
    "jti" : "{uuid}",
    "exp" : "{expiration time}",
    "iat" : "{issuance time}"
}
~~~
Signering sker med privat nyckel vars publika del finns i metadata med client_id som nyckel. Behöver även vara knuten till utfärdande organisation.

4. Klient tillverkar JWT (RFC7515) för användarinformation och signerar denn till en JWS (RFC7519).
Nedan är ett EXEMPEL på hur det skulle kunna se ut, "user_JWT". 
~~~markdown
{
    "iss": "{client_id}",
    "sub": "{personnummer/samordningsnummer användare}",
    "aud": "{token_endpoint}",
    "jti": "{uuid}",
    "exp": "{expiration time}",
    "iat": "{issuance time}",
    "userIdentity": {
        "trustMarkName": "Sweden Connect User Identity",
        "trustMarkSignature": "...JFUzI1NiI...",
        "personalIdentityNumner": "<personnummer>",
        "givenName": "<förnamn>",
        "sn": "<efternamn>"
    },
    "userOrganization": {
        "trustMarkName": "Sweden Connect User Organization",
        "trustMarkSignature": "...iIsImtpZC...",
        "OrganizationIdentifier": "<organisationsnummer>",
        "o": "<organisationsnamn>"
    },
    "userAuthInformation": {
        "trustMarkName": "self-issued",
        "trustMarkSignature": "...iIsImtpZC...",
        "healthcareProfessionalLicense": "LK"
    }
}
~~~

Sub i JWT indikerer användare och ska vara samma (eller avse samma) som angivet i userIdentity. Information som kommer från en annan tillitsfull källa, exempelvis ett identitetsintyg från Sweden Connect märks upp med trustmark och indikerar att informationen kommer från denna källa och är (av klienten) överförd till detta underlag (user_JWT). Om klienten själv är källan till information kan detta märkas med trustmark "self-issued". Det är tänkbart att flera trustmarks används i samma user_JWT, exempevis en blandning av identitet (exempelvis SC), organisation (exempelvis SC eller self-issued) och behörighetsinformation (exempelvis Sambi, HSA eller self-issued). I detta exempel används en SAML-Asseertion från IDP och klienten överför information från detta intyg till user_JWT. Innebär att klienten behöver vara betrodd (granskad?) att göra detta och ange trustmark för källan (IDP) avseende användarens identitet. 

Trustmarks som används (undantaget self-issued) ska gå att slå upp och verifiera i metadata.

Signering sker med privat nyckel vars publika del finns i metadata med client_id som nyckel. Behöver även vara knuten till utfärdande organisation.

4. Klient anropar auktorisationstjänst (token endpoint) ochj anger client_assertion_type som urn:ietf:params:oauth:client-assertion-type:jwt-bearer och client_assertion med JWS. Scope kan anges men ligger utanför denna specifikation (inget avtryck i metadata eller liknande).

~~~markdown
  POST /token HTTP/1.1
  Host: server.example.com
  Content-Type: application/x-www-form-urlencoded

  grant_type=client_id=s6BhdRkqt3&
     grant_type=urn%3Aietf%3Aparams%3Aoauth%3Agrant-type%3Ajwt-bearer&
     assertion=<user_JWT>&
     client_assertion_type=urn%3Aietf%3Aparams%3Aoauth%3Aclient-assertion-type%3Ajwt-bearer&
     client_assertion=<client_JWT>>
~~~
OBS client_id i body utgår eventuellt.

4. Auktorisationstjänst verifierar klient mot metadata, fattar åtkomstbeslut (är detta en klient jag tillåter åtkomst till avseende eventuellt angivet scope) och ställer ut åtkomstintyg (accesstoken) och förnyelseintyg (refreshtoken) enligt RFCXXXX.

5. accesstoken och refreshtoken returneras till klient

6. Anrop sker från klient till API med accesstoken angiven som Bearer Token (RFC6750). TLS för transportkryptering är obligatorisk och tillses av API. mTLS går att sätta upp, men krävs inte och rekommenderas inte. Identitet på klient bärs av token och tidigare verifiering av klient. 

---

Referensmaterial:

RFC6749 The OAuth 2.0 Authorization Framework
https://datatracker.ietf.org/doc/html/rfc6749


RFC7523 JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grants
https://datatracker.ietf.org/doc/html/rfc7523

RFC7515 JSON Web Signature (JWS)
https://www.rfc-editor.org/rfc/rfc7515.html

RFC7522 Security Assertion Markup Language (SAML) 2.0 Profile
      for OAuth 2.0 Client Authentication and Authorization Grants
https://datatracker.ietf.org/doc/html/rfc7522      

RFC 7521 Assertion Framework for OAuth 2.0 Client Authentication and Authorization Grants
https://datatracker.ietf.org/doc/html/rfc7521

OAuth 2.0 Client Authentication
https://darutk.medium.com/oauth-2-0-client-authentication-4b5f929305d4


Hur används scope - Är det bilateralt mellan klient och API eller något som hanteras i metadata?

private_key_jwt enligt OIDC:
https://openid.net/specs/openid-connect-core-1_0.html#ClientAuthentication

