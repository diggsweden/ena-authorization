```mermaid 
sequenceDiagram

    box rgb(230,255,255) Region
        participant User
    end
    box rgb(230,255,230) EHM
        participant Client as Förskrivningskollen Client Server
    end
    box rgb(230,255,255) Region/Ombud
        participant OP as OpenID Provider (Autentisering)
    end
    box rgb(230,255,255) Region/Ombud
        participant RS as Resource Server (Auktorisation)
    end

    %% User-to-Server OIDC Flow
    Note over User,RS: TILLIT I FEDERATION
    User->>Client: Access Protected Resource
    Client->>User: Redirect to OP for Authentication
    User->>OP: Authenticate and Consent
    OP->>User: Redirect to Client with Authorization Code
    User->>Client: Send Authorization Code
    Client->>OP: Exchange Authorization Code for Tokens
    OP->>Client: Return ID Token and Access Token
    Client->>RS: Request Resource with Access Token
    RS->>OP: Validate Access Token
    OP->>RS: Token Validation Response
    RS->>Client: Return Requested Resource
    Client->>User: Grant Access to Resource
