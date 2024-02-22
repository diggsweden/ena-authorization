# Gränsöverskridande identitets- och behörighetshantering på nationell nivå

## Målbild

- Vi avser att etablera strukturer och gemensamma ramverk för federativa system som hanterar identitets- och behörighetshantering över organisationsgränser.
- Arbetets fokus är nationell samordning, gemensam bas och överenskommelser om operatörernas ansvar samt tydliga riktlinjer för domänanpassning utifrån olika verksamhetsbehov.
- Vi ska även att skapa en digital infrastruktur för förmedling av tillit med komponenter som kan användas i olika federativa kontext och tekniska implementationer.
- Vi ska verka för en samordning av befintliga federationers tillitskrav där dessa redan är i olika grad överensstämmande (i motsats till att etablera nya gemensamma krav).
- Vi ska verka för att tillhandhålla en teknisk infrastruktur för att skapa teknisk tillit och interoperabilitet mellan federationer och aktörer
   -	Metadataregistratorer 
   -	Delegerade metadataregistratorer 
   -	Legitimeringstjänster, auktorisationstjänster, klienter, resurstjänster
- Vi ska ta fram förslag på auktorisationstjänsternas hantering/förmedling av digital identitet

### Obesvarade frågeställningar - Målbild
- N/A

## Arbetsformer och processer
- Arbetsprocessen är av iterativ form för att över tid fortsatt utveckla och förbättra ramverket utifrån vad som i stunden anses vara möjliga och rimliga målsättningar.
- Arbetet utgår från byggblockets arbetsgrupp och där deltar aktörer inom Ena. Löpande arbete kan också ske i mindre grupper där ytterligare intressenter relevanta för arbetet kan inbjudas att delta och komma med inspel. 
- För strategiska eller taktiska frågor av vikt kan dessa lyftas till byggblockets chefnivå för behandling och beslut.

## Principer

Vårt arbete utgår från principerna:
- frivillighet,
- moduläritet,
- anpassningsbarhet,
- skalbarhet över tid och
- samhällsinfrastruktur för både offentliga och enskilda aktörer.

## Avgränsningar
- Byggblock auktorisation ska inte ta fram ett nationellt tillitsramverk som behandlar något annat än legitimering eller förmedling av identitetsattribut utifrån tillitsramverk för svensk e-legitimation.

## Tillitsmodell

- Tillitsstrukturen är skild från den tekniska infrastrukturen men realiseras genom tillämpningen av den.
- Granskning av kravefterlevnad är nödvändigt för att säkerställa möjligheten till tillit för en aktör.
- De är de förlitande parterna som själva beslutar vilken nivå av granskning (självdeklaration, intern granskning, extern oberoende granskning) som krävs för behörigheten till en viss tjänst/funktion.
- Det är domänoperatören som är avtalspart och hanterar avtal med anslutande aktörer

### Obesvarade frågeställningar - Tillitsmodell
> [!Note] - Tillitsfrågan är urlyft ur BB Auktorisation och det har skapats en styrgrupp och en arbetsgrupp för att definera och fortsätta det arbetet inom Ena.
- Begreppet organisationstillit – kvalificerad tillit
- Gemensamma nationella tillitsnivåer v:s domänpaket av tillitskrav utifrån nationell katalog
- Organisationstillit inom Ena…?  

## Arkitektur

- Den tekniska lösningen behöver vara relativt enkel för aktörerna att leva upp till eftersom kraven kommer vara beroende på vilken information som ska överföras. Det är tillitskraven som står för säkerheten i behörighetshanteringen.
- Vårt huvudsakliga scenario vi söker att lösa är delegerad åtkomst med förmedling av behörighetsinformation över organisationsgränser för en användare där behörighetsgrundade attribut finns på anropande sida.
- Genom att lösa vårt huvudscenario kommer vi också att hantera de flesta delarna i system-systemauktorisation.
- Genom användningen av OAuth och OIDC Federation möjliggörs användningen av trust anchor och trust marks vilket skapar den tekniska förutsättningen för tillitsmodellen.
- Inom den tekniska infrastrukturen etablerar vi en uppslagsfunktion som förenklar hanteringen av metadata för aktörerna genom att den hämtar relevant metadata utifrån aktuell åtkomstpolicy för behörighet.
- Vi ska ta fram en arkitektur för ”Sweden Connect” – OIDC och OAuth.
- Vi ska ta fram en referensarkitektur inkl. lösningsmönster som bör användas för auktori-sation.
- Vi ska ta fram förslag till nationell identitet och behörighetshantering genom etablering av den tekniska infrastrukturen av OIDC och Oauth Federation.
- Vi ska ta fram förslag på en övergångslösning utifrån den befintliga SAML-infrastrukturer

### Obesvarade frågeställningar - Arkitektur

#### OIDC vs SAML

> [!Note] - Tilläg Pelle
- OIDC är inte etablerat idag, federationen bör INTE bygga på detta, utan vara en rekommenderad teknisk lösning på "intygshantering". Det är inte prioriterat att ta fram dessa specifikationer i arbetsgruppen.
- En resolverfunktion är en bra sak att ha, men metadata måste hanteras separat i ett metadataregister till att börja med.

#### Robusthet

> [!Note] - Pelle tycker detta är viktigt
- För att uppnå robusthet, måste beroendet till "centrala" tjänster minimeras. Dvs autentisering och auktorisation måste kunna ske lokalt vid avbrott, i kris- och krigssituationer. En nationell federation måste designas meddetta i åtanke. Därför måste t.ex. Sweden Connects krav på centrala IdP:er bort!

## Teknisk infrastruktur

- Vi ska verka för att tillhandhålla en teknisk infrastruktur för att skapa teknisk tillit mellan federationens aktörer
o	Metadataregistratorer 
o	Delegerade metadataregistratorer 
o	Legitimeringstjänster, auktorisationstjänster, klienter, resurstjänster
- De tekniska specifikationerna bygger på Oauth och OIDC Federation
- Samexistera med befintliga SAML-federerationber
- Vi ska ta fram OIDC och Oauth specifikationer
  - OIDC Sweden och OIDC Sweden Connect
- Vi ska ta fram OIDC Federation specifikationer
- Vi ska ta fram tjänster för metadatahantering inom federationen
- Vi ska ta fram en struktur för förmedling av tillitsinformation
  - Tillitsmärken (tex kvalitetsmärken, LoA-granskning, avtal) inom federationen(-erna) 
- Vi ska ta fram en struktur för format för tillitsmärken samt hur de ges ut och verifieras tekniskt.

#### Obesvarade frågeställningar - Teknisk infrastruktur

- Möjligheten att skapa en ”ny” nationell SAML-federation som även hanterar behörighetsattribut.

