# Hantering av tillit, identitet och behörighet

## OICD Federation och tillit
1. Vad är skillnaden mellan trust anchors, intermediates och trust mark issuers? Är det två olika tillitsstrukturer?
2. Sparas trust marks i samma metadataregister som de digitala identiteterna?

```mermaid
flowchart LR

subgraph AO[Tjänstekonsument]
    A(API-konsumerande system)
end

subgraph BO[Tjänsteproducent]
    B-AS(Auktorisationstjänst)
    B(API)
end

subgraph TO[Sweden Trust - tillitsfederation]
    T-AS(Auktorisationstjänst)
    T(Metadataregister)
end


A--begär åtkomst-->B-AS
A--anropar-->B
AO & BO-.har tillit till.->TO
B-AS--begär åtkomst-->T-AS
B-AS--hämtar behörighetsgrundande attribut-->T
```
## Nationella OAuth2-profiler - behovsinventering

### 1. Tjänsteperson använder annan organisations e-tjänst

```mermaid
flowchart LR

subgraph BO[Tjänsteproducent]
    subgraph B-IAM[IAM]
        B-U(Uppdragsväljare) & B-ID(Legitimeringstjänst)
        --?-->B-A(Attributkälla)
        B-AS(Auktorisationstjänst)
    end
    B-UI(E-tjänst)
end

subgraph EIDO[eID-utfärdare]
    EID(Autentiseringstjänst)
end

U(Tjänsteperson)--1. vill nyttja-->B-UI
U--2. legitimerar sig via-->B-ID
U--2.1 autentiserar sin digitala identitet mot-->EID
U--2.2 väljer bland tillgängliga\n medarbetaruppdrag-->B-U
U--3. begär åtkomst till tjänst\n med valt uppdrag-->B-AS
B-ID-.medger autentisering med.->EID
```
## Modell för behörighetgrundande attribut

## Attributprofiler


