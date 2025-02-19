![Logo](../../images/ena-logo-small.png)

# API-anrop över organisationsgränser

## Innehållsförteckning

1. [**Introduktion**](#introduktion)

> TODO

<a name="introduktion"></a>
## 1. Introduktion

> TODO

> Abstrahera bort hur användaren har autentiserat sig. Hänvisa till senare diskussion.

![pre](images/prereqs1.png)

## 2. Mönster för anrop över organisationsgränser

### 2.1. Applikationen samverkar med flera auktorisationstjänster 

Enligt draften "OAuth Identity and Authorization Chaining Across Domains", \[[OAuth.Chaining](#oauth-chaining)\].

```mermaid
sequenceDiagram
autonumber
    actor User as Användare

    box rgb(16,185,187) "Organisation A"
        participant Service as e-tjänst
        participant AsA as Authorization Server A
        participant ApiA as Skyddat API A
    end

    box rgb(239,174,55) "Organisation B"
        participant AsB as Authorization Server B
        participant ApiB as Skyddat API B
    end

    User-->Service: Inloggad hos e-tjänst
    User-->AsA: Har en session hos den lokala AS

    Note over Service: Anrop till Skyddat API B behöver<br />göras å användarens vägnar 
    Service->>+AsA: Token Exchange Request (RFC8693)
    AsA->>-Service: Authorization Grant JWT

    Service->>+AsB: Begär Access Token<br />Skicka med Authorization Grant JWT
    AsB->>-Service: Access Token

    Service->>+ApiB: Gör API-anrop<br />Skickar med Access Token
    ApiB->>-Service: API-svar

    Service-->>User: Återkoppling till användare ...
```

> TODO: Stor nackdel. E-tjänsten måste vara registrerad/känd hos AS B. Om Org A har många olika tjänster som behöver anropa API B växer problemet. Inte nog med att konfigurationen hos A blir komplex, administrationen hos B blir än värre.

> TODO: Administrationen rörande vilka tjänster hos olika organisationer som ska få kommunicera med AS B kommer snabbt att bli ohanterlig. Nycklar krävs för i princip alla komponenter.

> TODO: Ge exempel på hur JWT kan se ut ...

### 2.2. Applikationen pratar endast med lokal auktorisationstjänst

```mermaid
sequenceDiagram
autonumber
    actor User as Användare

    box rgb(16,185,187) "Organisation A"
        participant Service as e-tjänst
        participant AsA as Authorization Server A
        participant ApiA as Skyddat API A
    end

    box rgb(239,174,55) "Organisation B"
        participant AsB as Authorization Server B
        participant ApiB as Skyddat API B
    end

    User-->Service: Inloggad hos e-tjänst
    User-->AsA: Har en session hos den lokala AS

    Note over Service: Anrop till Skyddat API B behöver<br />göras å användarens vägnar 

    Service->>+AsA: Begär Access Token för API B<br />Kan göras med Refresh Token<br />eller med Token Exhange
    AsA-->>AsA: Skapa JWT och signera (Authorization Grant JWT)
    AsA->>+AsB: Begär Access Token<br />Skicka med Authorization Grant JWT
    AsB->>-AsA: Access Token

    AsA->>-Service: Access Token

    Service->>+ApiB: Gör API-anrop<br />Skickar med Access Token
    ApiB->>-Service: API-svar

    Service-->>User: Återkoppling till användare ...
```

## 3. Kedjade anrop

> TODO: En resursserver agerar klient.

## 4. Användarautentisering och anrop över organisationsgränser

<a name="referenser"></a>
## Referenser

<a name="oauth-chaining"></a>
**\[OAuth.Chaining\]**
> [OAuth Identity and Authorization Chaining Across Domains, December 2024](https://www.ietf.org/archive/id/draft-ietf-oauth-identity-chaining-03.html)