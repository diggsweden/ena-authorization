### Flowchart Finansiell status

```mermaid
flowchart LR
classDef Amber color:#000000,fill:#FFDEAD
classDef Green color:#000000,fill:#BDFFA4
classDef orange color:#000000,fill:#f96
subgraph Finansiell status
A{{Användare<br><i>Handläggare<i><br>Kommun A}}:::Amber
B([E-tjänst<br>Finansiell status<br>Myndighet B])
C(Anvisningstjänst)
D[(Info-källa<br>Kronofogden)]:::orange
E[(Info-källa<br>Bolags-verket)]:::Green
F(Intygsutfärdare Kommun A):::Amber
G(Autentiseringstjänst):::Amber
H(Ev. uppdragsväljare):::Amber
I(Attributskälla Kommun A):::Amber
A -->|Loggar in i extern e-tjänst<br> med e-legitimation | B
B <==> C
B -->|Rollattribut:<br>”handläggare av<br> ekonomiskt bistånd” | D
B --> |Ej Rollattribut:<br>Offentliga uppgifter| E
B --> |Anropar<br>intygsutfärdartjänst| F
F <==> G
F --> H
F --> |Hämtar attribut som krävs<br>för åtkomst till Kronofogden| I
F -.-> |Intyg med identitet<br>och attribut| B
B-.->|E-tjänsten har tillit till de attribut<br> som fås och auktoriserar användaren<br> för användning av e-tjänsten |A
end

### Sekvensdiagram inansiell status

```mermaid
sequenceDiagram 
autonumber
actor A as Användare<br>Handläggare Kommun A
participant B as E-tjänst<br>Finansiell status<br>Myndighet B
participant C as Anvisningstjänst
participant D as Intygs-<br>utfärdare<br>Kommun A
participant E as Ev. uppdrags-<br>väljare
participant F as Autentiserings-<br>tjänst
participant G as Attributskälla<br>Kommun A
participant H as Info-källa<br>Kronofogden
participant I as Info-källa<br>Bolags-verket
A->>B: Loggar in i extern e-tjänst<br> med e-legitimation
B->>C: Väljer intygsutfärdartjänst<br>baserat på Användarens anrop
B->>D: Anropar intygsutfärdartjänst
D->>E: Väljer uupdrag (om flera)
D->>F: Autentiserar användarens certifikat
D->>G: Hämtar relevanta attribut
D->>B: Intyg med identitet och attribut
B->>H: Autentiserar och auktoriserar E-tjänsten hos Kronofogdens info-källa
H->>B: Får relevant rollattribut för "Handläggare av ekonomiskt bistånd"
B->>I: Hämtar offentliga uppgifter från Bolagsverket
B->>A: Användaren får<br>tillgång till tjänsten



