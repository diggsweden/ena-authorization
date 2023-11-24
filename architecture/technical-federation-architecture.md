### Teknisk federationsarkitektur

```mermaid
flowchart LR
classDef Amber color:#000000,fill:#FFDEAD
classDef Green color:#000000,fill:#BDFFA4
classDef orange color:#000000,fill:#f96
A{{Användare<br>Org A}}:::Amber
B([E-tjänst<br>Org B])
C(Anvisningstjänst)
D[(Info-källa<br>Org C<br>Auth)]:::orange
E[(Info-källa<br>Org D<br>Öppen)]:::Green
F(Intygsutfärdartjänst Org A):::Amber
G(Autentiseringstjänst):::Amber
H(Uppdragsväljare):::Amber
I(Attributskälla Org A):::Amber
J(E-legitimationsutfärdare)
J ==> A
A -->|1. Loggar in i extern e-tjänst<br> med e-legitimation | B
B <==> C
B --> |2. Anropar<br>intygsutfärdartjänst| F
F <==> G
F --> H
F --> |3. Hämtar behörighetsstyrande attribut| I
F -.-> |4. Intyg med identitet<br>och attribut| B
B -->|5. Kompletterande attribut<br>S2S autenticering| D
B --> |6. Kompletterande<br>Offentliga uppgifter| E
B-.->|7. E-tjänsten har tillit till de attribut<br> som behövs och auktoriserar användaren<br> för användning av e-tjänsten |A
```
## Tjänstekomponenter i federation

- Möjliga tjänstekomponenter i federationen (diskuteras):
  - E-legitimation
  - E-tjänst
  - Anvisnings-/hänvisningstjänst
  - Intygsutfärdartjänst
    - (med uppdragsväljare)
    - åtkomstintygsutfördartjänst
  - Identifieringstjänst (beroende till)
  - Autentiseringstjänst(er)
  - Attributtjänst
  - Regelverkstjänst
    - (med repository)
- Stödtjänster
    - Metadata
    - Spårbarhet
    - Federations-federationsåtkomst
    - Personuppgifter
    - API-säkerhet
    - Provisioneringstjänst

## Beskrivning tjänstekomponenter i federation

### E-legitimation

E-legitimation är en elektronisk id-handling som du kan använda för att legitimera dig på ett säkert sätt på inom Ena-federationen. Den är granskad och godkänd för användning i en viss Tillitsnivå.

### E-tjänst

Elektroniska tjänster eller E-tjänster är tjänster som produceras och konsumeras i ett elektroniskt medium. E-tjänster i Ena-federationen är granskade och godkända på en viss Tillitsnivå. E-tjänsten ställer krav på konsumenter av tjänsten att uppfyla en viss Tilltisnivå för användning.

### Anvisnings-/hänvisningstjänst

I en identitetsfederation är det möjligt att erbjuda och konsumera en gemensam anvisningstjänst (Discovery Service), som listar vilka legitimeringstjänster som är möjliga för användaren att välja mellan. Syftet med en sådan anvisningstjänst är att avlasta de enskilda e-tjänsterna som ingår i identitetsfederationen från att själva implementera stöd för hur användare väljer legitimeringstjänst (eller inloggningsmetod).

Genom att anvisningstjänsten finns tillgänglig inom identitetsfederationen kan e-tjänster styra sina användare dit för val av legitimeringstjänst. Anvisningstjänsten interagerar med användaren som gör sitt val och användaren, tillsammans med dennes val, styrs tillbaka till e-tjänsten som nu vet till vilken legitimeringstjänst användaren ska skickas för legitimering.

### Intygsutfärdartjänst

"Intygsutfärdartjänst sammanställer uppgifter om användaren i en så kallad biljett. Uppgifterna hämtas från attributtjänster. Biljetten används av e-tjänsten för att styra vad användaren ska få se och göra."

### Identifieringstjänst 

Identifieringstjänst är en säkerhetslösning som används för att utfärda elektroniska identitetshandlingar till både personer och system. E-legitimation används för att identifiera personer och  funktionscertifikat används för att identifiera system. 

### Autentiseringstjänst(er)

Autentiseringstjänsten, som är en stödkomponent som en IdP använder för att tekniskt hantera och läsa användarens e-legitimation.

### Attributtjänst

När en e-legitimering görs i tjänsten behöver ibland fler uppgifter hämtas in från ett register för att kunna avgöra vilken behörighet tjänstepersonen har i just denna digitala tjänst. Denna behörighetshantering kallas också för auktorisation. I den digitala världen kan auktorisation ske med hjälp av behörighetsstyrande information från en så kallad attributtjänst. 

### Regelverkstjänst

Inom OpenId Connect/OAUTH...

### Stödtjänster

#### Metadatatjänst

En SAML-federation tillhandahåller information om federationens deltagare genom SAML metadata. Som deltagare i en federation räknas såväl aktörer som levererar legitimerings- och attributtjänster i federationen som förlitande parter, d.v.s. aktörer som konsumerar dessa tjänster, t ex. e-tjänster.

Genom federationens metadata kan deltagare inhämta information om andra deltagares tjänster, inklusive de uppgifter som krävs för ett säkert informationsutbyte mellan deltagarna. Metadata måste hållas uppdaterat av respektive part och överensstämma med avtalade förhållanden.

Det viktigaste syftet med metadata är att tillhandahålla de nycklar/certifikat som krävs för säker kommunikation och informationsutväxling mellan tjänster. Utöver nycklar innehåller metadata även annan information som är viktig för samverkan mellan tjänster t ex. adresser till funktioner som krävs, information om tillitsnivåer, tjänstekategorier, användargränssnittsinformation mm.

En identitetsfederation definieras av ett register i XML-format som är signerat med federationsoperatörens certifikat. Filen innehåller information om identitetsfederationens medlemmar inklusive deras certifikat. Eftersom filen med metadata är signerad räcker det med att jämföra ett certifikat med dess motsvarighet i metadata. En infrastruktur baserad på ett centralt federationsregister förutsätter att registret uppdateras kontinuerligt samt att federationsmedlemmarna alltid använder den senaste versionen av filen.

#### Tjänster för Spårbarhet

#### Tjänster för Federations-federationsåtkomst

#### Tjänst för Personuppgifter

#### Tjänst för API-säkerhet

#### Provisioneringstjänst
