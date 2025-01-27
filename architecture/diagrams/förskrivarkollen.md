```mermaid 
sequenceDiagram
autonumber
    box rgb(230,255,255) Region A
    participant A as Användar-<br>browser
    participant B as IdP
    end
    box rgb(230,255,230) EHM
    participant C as SP Förskrivarkollen
    participant D as Förskrivarkollen
    end
    Note over A,D: TILLIT I FEDERATION
    A->>C: HTTP GET (tillit förkonfigurerat)
    C-->>A: Användare ej autentiserad, redirect Browser till lokal IdP
    A->>B: Autentiseringsbegäran
    B-->>A: Användare autentiseras, SAML attribut hämtade (från katalog)
    A->>C: SAML skickas till SP
    C->>C: Verifiera SAML
    C->>D: Användare inloggad, tilldelad åtkomst mha SAML-attribut 
    D->>A: Användarsession etablerad
