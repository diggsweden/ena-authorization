```mermaid 
sequenceDiagram

    box "User's Organization"
        participant User
    end
    box "Client Server Organization"
        participant Client as Client Server
    end
    box "Identity Provider Organization"
        participant OP as OpenID Provider (OP)
    end
    box "Resource Server Organization"
        participant RS as Resource Server
    end

    %% User-to-Server OIDC Flow
    Note over User,RS: ANVÄNDAR-FLÖDE
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
    %% Server-to-Server OIDC Flow
    Note over Client,RS: NYTT S2S-FLÖDE
    Client->>OP: Request Access Token (Client Credentials)
    OP->>Client: Issue Access Token
    Client->>RS: Request Resource with Access Token
    RS->>OP: Validate Access Token
    OP->>RS: Token Validation Response
    RS->>Client: Return Requested Resource
