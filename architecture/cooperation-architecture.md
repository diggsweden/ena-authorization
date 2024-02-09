# Samverkans-/interoperabilitetsarkitektur

## Sammanfattning och Introduktion

- Översikt av federationen och dess syfte
- Mål och vision för den federativa arkitekturen

## Verksamhetsarkitektur

- Beskrivning av affärsprocesser och hur de relaterar till federationen
- Krav och mål för verksamheten

## Informationsarkitektur
- Beskrivning av informationsflöden mellan federerade enheter
- Datamodeller och informationsstrukturer för federationen
- Strategi för informationshantering och säkerhet

## Applikationsarkitektur
- Översikt av federationen(-erna)
- Arkitektoniska beskrivningar federativa komponenter
- Integrationsflöden

### Tjänstekomponenter i federation

- Möjliga tjänstekomponenter i federationen (diskuteras):
  - E-legitimation
  - E-tjänst
  - Anvisningstjänst
  - Intygsutfärdartjänst/IdP
    - (med uppdragsväljare)
    - åtkomstintygsutfördartjänst
  - Identifieringstjänst (beroende till)
  - Autentiseringstjänst(er)
  - Attributtjänst
  - Regelverkstjänst
    - (med repository)
- Stödtjänster
    - Metadata
    - Revokering
    - Spårbarhet
    - Federations-federationsåtkomst
    - API-säkerhet
    - Provisioneringstjänst

### Beskrivning tjänstekomponenter i federation

#### E-legitimation

E-legitimation är en elektronisk id-handling som du kan använda för att legitimera dig på ett säkert sätt på inom Ena-federationen. Den är granskad och godkänd för användning i en viss Tillitsnivå.

#### E-tjänst

Elektroniska tjänster eller E-tjänster är tjänster som produceras och konsumeras i ett elektroniskt medium. E-tjänster i Ena-federationen är granskade och godkända på en viss Tillitsnivå. E-tjänsten ställer krav på konsumenter av tjänsten att uppfyla en viss Tilltisnivå för användning.

#### Anvisningstjänst

I en behörighets- och identitetsfederation är det möjligt att erbjuda och konsumera en gemensam anvisningstjänst, som listar vilka Intygsutfärdartjänster som är möjliga för användaren att välja mellan. Syftet med en sådan anvisningstjänst är att låta användaren välja vilken organisation den tillhör och därmed anropa "rätt" Intygsutfärdartjänst.

#### Intygsutfärdartjänst/IdP

Intygsutfärdartjänsten ansvarar för att autentisera användaren, sammanställer de uppgifter uppgifter om användaren som E-tjänsten behöver och leverera dessa uppgifter på ett säkert sätt i ett intyg. Intygsutfärdartjänsten använder flera andra tjäsnter för att genomföra detta; en autentiseringstjänst (eller alternativt en spärrtjänst/revokeringslista) och attributkällor. Uppgifterna hämtas från attributtjänster. Intyget används sedan av e-tjänsten för att styra vad användaren ska få se och göra.

#### Identifieringstjänst 

Identifieringstjänst är en säkerhetslösning som används för att utfärda elektroniska identitetshandlingar till både personer och system. E-legitimationer används för att identifiera personer och  funktionscertifikat används för att identifiera system. 

### Autentiseringstjänst(er)

Autentiseringstjänsten, som är en stödkomponent som en IdP använder för att tekniskt hantera, läsa och verifiera användarens e-legitimation.

#### Attributtjänst

När en användare försöker logga in i en E-tjänst behövs ibland uppgifter hämtas in från ett register för att kunna avgöra vilken behörighet personen har i just denna digitala tjänst. Denna behörighetshantering kallas också för auktorisation. I den digitala världen kan auktorisation ske med hjälp av behörighetsstyrande information som hämtas från en så kallad attributtjänst. 

#### Regelverkstjänst

Inom OpenId Connect/OAUTH...

#### Stödtjänster

##### Metadatatjänster

En SAML-federation tillhandahåller information om federationens deltagare genom SAML metadata. Som deltagare i en federation räknas såväl aktörer som levererar legitimerings- och attributtjänster i federationen som förlitande parter, d.v.s. aktörer som konsumerar dessa tjänster, t ex. e-tjänster.

Genom federationens metadata kan deltagare inhämta information om andra deltagares tjänster, inklusive de uppgifter som krävs för ett säkert informationsutbyte mellan deltagarna. Metadata måste hållas uppdaterat av respektive part och överensstämma med avtalade förhållanden.

Det viktigaste syftet med metadata är att tillhandahålla de nycklar/certifikat som krävs för säker kommunikation och informationsutväxling mellan tjänster. Utöver nycklar innehåller metadata även annan information som är viktig för samverkan mellan tjänster t ex. attribut som en E-tjänst behöver, adresser till funktioner som krävs, information om tillitsnivåer, tjänstekategorier, användargränssnittsinformation mm.

En identitetsfederation definieras av ett register i XML-format som är signerat med federationsoperatörens certifikat. Filen innehåller information om identitetsfederationens medlemmar inklusive deras certifikat. Eftersom filen med metadata är signerad räcker det med att jämföra ett certifikat med dess motsvarighet i metadata. En infrastruktur baserad på ett centralt federationsregister förutsätter att registret uppdateras kontinuerligt samt att federationsmedlemmarna alltid använder den senaste versionen av filen.

##### Revokeringstjänst

En revokeringstjänst tillhandahåller en revokeringslista som är ett sätt att avgöra om en e-legitimations certifikat är giltigt. Detta är en del av en mer robust metod att autentisera användare än att använda en autentiseringstjänst. 

##### Tjänster för Spårbarhet

Det är viktigt att alla transaktioner i en federation, där många transaktioner sker i olika tjänster och organisationer, är spårbara. Därför behöver en spårbarhetsarkitektur byggas där berörda parter kan spåra vad som hänt överallt, vid t.e.x felsökning eller misstanke om brott eller felhantering.

##### Tjänster för Federations-federationsåtkomst

En metadatatjänst som innehåller nycklar, instruktioner och regelverk för vad som krävs vid kommunikation mellan två olika federationer

##### Tjänst för API-säkerhet (API Gateway)

En tjänst för API-säkerhet kan vara en reglerad del av en federation som används för att säkerställa att tjänstkomponenerna är tillräckligt skyddade.
- Fasad för tjänster genom att acceptera API-anrop och dirigera dem till lämpliga bakomliggande delar.
- Verifiera funktionscertifikat, API-nycklar och andra autentiseringsuppgifter som JWT-token och certifikat som visas med begäranden
- Säkerställa användningskvoter och hastighetsgränser
- Transformera begäranden och svar enligt vad som anges i principinstruktioner
- Konfigurera cachelager för svar för att förbättra svarsfördröjningen och minimera belastningen på serverdelstjänster
- Genererar loggar, mått och spårningar för övervakning, rapportering och felsökning

##### Provisioneringstjänst

Enkelt beskrivet är provisionering en process som möjliggör en automatiserad överföring av data mellan system. Processen är användbar exempelvis inom hantering av användaruppgifter där användarattribut överförs från en masterkälla till andra E-tjänster. Detta kan vara en lösning som tillhandahålls om det av olika orsaker är svårt att använda ett system med intygsutfördartjänster.

## Säkerhetsarkitektur
- Säkerhetspolicyer och riktlinjer för federationen
- Incidenthantering och kontinuitetsplaner för säkerhet

## Styrning och förvaltning
- Beslutsgång och styrningsstruktur för federationen
- Ansvarsfördelning och roller inom arkitekturhantering
- Utvecklings- och förvaltningsprocesser för den federativa arkitekturen

## Tillits- och Interoperabilitetsramverk
- Ramverk för att etablera och hantera tillit mellan federationens(-ernas) aktörer
- Interoperabilitetsstandarder och principer för samarbete mellan olika delar av federationen

## Referensarkitektur
- Referensmodeller och lösningsmönster

## Teknisk infrastruktur
- Feerationen(-ernas) tekniska arkitektur
- OICD/OAuth och SAML
