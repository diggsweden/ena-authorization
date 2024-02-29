# Nationell federationsinfrastruktur

Den nationalle infrastrukturen för att kunna skapa federativa kontext kan delas in i tre områden.
 - Federationsspolicy
    - Regelverk för anslutning
    - Processer för styrning och samverkan 
 - Federativ tillitsinfrastruktur 
    - Samordnad hantering av tillitskrav på nationell och domännivå
    - Gruppering av tillitskrav i form av tillitsmärken och tillitsramverk 
 - Federativa integrationsmönster
    - Tekniska specifikationer
    - Tekniska integration och anslutning

## Översikt av områden

```mermaid
graph TD

subgraph nfi[Federationspolicy]
direction LR     
 fp(Federationspolicy)~~~
 ap(Attributprofil)
end

subgraph ti[Tillitsinfrastruktur]
direction LR
 subgraph semantisk[Tillit]
  nkk(Kravkatalog)
  ntm(Katalog tillitsmärken)
  ntr(Tillitsramverk)
 end
 subgraph tim[Metadatainfrastruktur]
  am(Aktörsmetadata\nför organisationer)
  tm(Tillitsmetedata\nför entiteter)
  tmi(Metadata\nutfärdare av\ntilitsmärken)
 end
end

subgraph fim[Federativa integrationsmönster]
direction LR
 subgraph tech[Tekniska specifikationer]
  oidcf(OIDC/OIDF)
  saml(SAML)
  techx(Teknik X)
 end
 subgraph fimm[Federativ metadata]
  ena-oidf(Ena\nOIDF)
  ena-saml(Ena\nSAML)
  ena-x(Ena\nX)
 end
end

nfi---ti
ti---fim

```
### Komponenter

#### Federationspolicy

#### Tillitsinfrastruktur
Tillitskrav 
 - Nationell kravkatalog
 - Tillitsmärken
 - Tillitsramverk

Metetadatainfrastruktur

#### Federativa integrationsmönster
##### Tekniska specifikationer
 - Specifikationer och profiliering
##### Metadatainfrastruktur
 - OIDF
 - SAML
