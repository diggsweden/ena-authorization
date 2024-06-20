<p><img align="right" src="../images/Ena-logo.png" width="25%" Height="25%"></img></p>
<p>&nbsp;</p>

:arrow_backward: [Tillbaka](README.md)

<sup>Senaste uppdatering: 20 juni 2024</sup>

---------

# En gemensam digital infrastruktur för identitets- och behörighetshantering
Registrering och distribution av tillitsinformation är en resurskrävande men kritisk del i en fungerande infrastruktur för öppen samverkan över organisationsgränser. Att lösa denna uppgift har visat sig vara både svårt och komplicerat i traditionella federationer där administration och kontroll koncentreras till en sammanhållen federationsoperatör.

Den centraliserade modellen för federationer som varit styrande i flera decennier ställer stora krav på federationsoperatören med avseende på såväl administration som kontroll av aktörer och deras uppfyllnad av viktiga specifikationer och regelverk. Även om federationsoperatören kan införa olika former av delegerat ansvar, så är det i slutändan federationsoperatören som ikläder sig det yttersta ansvaret och är den som signerar och publicerar betrodd information om alla aktörer i federationen.

## OpenID federation 
OpenID federation definierar en digital infrastruktur som kan försörja betrodda förbindelsepunkter i ett distribuerat nätverk. Det skapar möjlighet för en leverantör av intygsfunktion och en förlitande part att etablera tillit mellan sig även om parterna inte skulle ha ett direktförhållande till varandra. Etableringen hanteras genom en delegerad kedja för administration och distribution av tillitsinformation. 

OpenID Federation (OIDF) tillför en helt ny modell för en öppen delegerad digital infrastruktur för administration och distribution av tillitsinformation för deltagande tjänster. Även om OIDF är framtagen av OpenID Foundation som utvecklat OpenID Connect, så är OIDF detta till trots en öppen modell för tillitsinformation som redan i sin grundform stödjer andra protokoll, till exempel OAuth för delegering av auktorisation. Faktum är att OIDF har väldigt få begränsningar för vilka typer av tjänster och protokoll som kan stödjas. Det finns inget som hindrar att OIDF byggs ut och används som basinfrastruktur för att hantera registrering av aktörer som tillämpar andra typer av protokoll, såsom SAML.

OIDF åstadkommer detta genom en decentraliserad modell som bryter ner ansvaret för registrering, kontroll och administration till flera aktörer. I denna modell behöver parter som ingår i federationen ta ett större egenansvar för att publicera data (metadata) om sina tjänster (entiteter). På så sätt kan OIDF växa fram i en dynamisk process där bördan för att upprätta och underhålla federationen fördelas mellan flera aktörer utan att för den sakens skull göra avkall på kraven om kvalitet och tillit. 

## Grundläggande struktur
### Delegering
Till skillnad från en traditionell federation där registrering av alla tjänster administreras av en central federationsoperatör, organiserar OIDF en delegerad modell som fördelar registreringsansvaret till olika aktörer som bildar en kedja av betrodda förbindelsepunkter. Denna modell erbjuder hierarkier av betrodda förbindelsepunkter som i standarden kallas för *tillitsankare* och *intermediära entiteter*.

I stället för separata federationer med vattentäta skott, erbjuder OIDF samexistens av olika federativa kontext inom ramen för en samlad förvaltningsövergripande digital infrastruktur. En federativ kontext kan liknas som en traditionell federation, men skiljer sig i sin distributiva natur och nätverksstruktur. Varje federativ kontext definieras av ett tillitsankare som utgör toppen på en tillitskedja i federationen. Den används för att validera uppgifter om en specifik digital tjänst i nätverket av tjänster via en eller flera betrodda intermediära förbindelsepunkter. Tillitsankaret bestämmer reglerna för valideringen. Dessa regler avgör i sin tur vilka metadata och tillitsmärken som accepteras för en specifik digital tjänst.

En federativ kontext kan representera ett specifikt behovsområde eller verksamhetsdomän som samlar en grupp av aktörer kring förmedling av strukturerade data om identiteter och behörighetsgrundande information. Kontexten definieras genom gemensamma syften, behov, datasemantik, tillitsramverk, regler och policyer. 

Exempel på federativa kontext: 
•	Direkt e-legitimering för inloggning till webbaserade digitala tjänster. 
•	Delegerad beslut för åtkomst till digitala resurser inom hälso- och sjukvård.
•	Delegerad beslut för åtkomst till digitala resurser inom skola och utbildning.

### Metadata och Tillitsmärke
