### Teknisk federationsarkitektur

```mermaid
flowchart LR
classDef Amber color:#000000,fill:#FFDEAD
classDef Green color:#000000,fill:#BDFFA4
classDef orange color:#000000,fill:#f96
A{{Användare<br>Org A}}:::Amber
B([E-tjänst<br>Org B])
C(Anvisningstjänst)
D[(Info-källa<br>Auth)]:::orange
E[(Info-källa<br>Öppen)]:::Green
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

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

### Intygsutfärdartjänst

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.



