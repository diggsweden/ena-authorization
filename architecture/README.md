# Arkitektur - tänkta leverabler

## [Samverkans-/interoperabilitetsarkitektur](cooperation-architecture.md)
- Övergripande mål och principer: 
Detta inkluderar de övergripande målen för systemet eller organisationen och de arkitektoniska principer som ska styra utvecklingen och användningen av arkitekturen.

- Arkitektoniska beskrivningar: 
Det kan innefatta olika aspekter som systemets komponenter, aktörer och deras roller, deras relationer, dataflöden, infrastruktur, säkerhet, prestanda, skalbarhet, tillitskrav och tillitsramverk.

- Önskat tillstånd: En klar beskrivning av hur systemet målen är uppnådda. Det kan inkludera specifikationer av systemets funktionalitet, användarupplevelse, skalbarhet, och andra viktiga egenskaper.

- Tidsram: En uppskattning av när olika delar av arkitekturen ska vara på plats eller när specifika mål ska uppnås. Det kan inkludera kort- och långsiktiga mål.

- Risker och möjligheter: Identifiering av potentiella risker som kan påverka arkitekturen och möjligheter till förbättring eller innovation.

- Krav: En sammanställning av krav från olika intressenter eller intressentgrupper som bör beaktas vid utvecklingen av arkitekturen.

## [Tekniska federationsarkitekturer](technical-federation-architecture.md)
### SAML & OIDC-OAuth
- Översikt och sammanfattning: En introduktion till federationsramvkeret, dess syfte, och en övergripande beskrivning av dess arkitektur.

- Arkitektoniskt ramverk och komponenter: En detaljerad lista eller diagram som identifierar och beskriver de olika komponenterna, deras roller och hur de interagerar med varandra. 

- Dataflöden och processer: Beskrivningar av hur data rör sig genom systemet, bearbetas och lagras. Detta kan inkludera flödesscheman, beskrivningar av dataformat och datahantering.

- Tekniska specifikationer och standarder: Information om de tekniker, verktyg, och plattformar som används inom systemet. Det kan också innefatta överväganden kring valda standarder och varför de har valts.

- Säkerhet och integritet: En beskrivning av säkerhetsåtgärder och metoder som används för att skydda systemet mot obehörig åtkomst, dataintrång och andra hot.

- Skalbarhet och prestanda: Hur systemet är utformat för att kunna hantera olika nivåer av belastning och hur det presterar under olika förhållanden.

- Underhåll och förvaltning: Information om hur systemet ska underhållas, uppgraderas och hanteras över tid, inklusive eventuella framtida planer eller förändringar.

- Diagram och visualiseringar: Grafisk representation såsom flödesscheman, diagram och modeller för att tydliggöra arkitekturen och dess komponenter.

## [Referensarkitektur arkitektur](reference-architecture.md)

- Standardiserat ramverk: Det är en väldefinierad struktur som beskriver de grundläggande komponenterna, deras relationer, samt de bästa praxis och riktlinjer för hur de ska integreras och fungera tillsammans.

- Generell och anpassningsbar: 
Trots att den erbjuder en standardiserad modell är en referensarkitektur oftast flexibel och kan anpassas efter specifika krav eller behov i olika sammanhang eller projekt.

- Best practice-riktlinjer: 
Den innefattar rekommendationer och bästa praxis för att lösa vanliga problem inom en given domän. Det kan inkludera rekommendationer om säkerhet, skalbarhet, prestanda, och liknande.

  - [Mönster för autentisering och auktorisation](patterns/authn-authz-patterns.md)
  - [API-anrop över organisationsgränser](patterns/inter-domain-calls.md)

- Dokumentation och exempel: 
En referensarkitektur levereras ofta med dokumentation och exempel på implementationer för att underlätta förståelsen och tillämpningen av dess principer.
