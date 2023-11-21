# Byggblock Auktorisation - Målbild

Denna mapp används för lagring och produktion av arbetsdokuement för målbild

## Principer för arbetet med nationell identitet- och behörighetshantering
### Målbild och process

- Vi kommer inte arbeta fram ett förslag på en enda nationell federation för nationell identitets- och behörighetshantering.
- Vi eftersträvar att etablera ett enhetlig nationellt ramverk för identitets- och behörighetshantering med tyngdpunkt på nationell samordning, frivillighet, tydliga riktlinjer för domänanpassning och domoperatörers ansvar samt anpassning och skalbarhet över tid. 
- Vi ska samordna befintliga federationers tillitskrav där dessa redan är i olika grad överensstämmande istället för att etablera nya gemensamma krav.
- Arbetsprocessen är av iterativ form för att över lång tid fortsatt utveckla och förbättra ramverket utifrån vad som i stunden anses vara möjliga och rimliga målsättningar.
- Arbetet utgår från byggblockets arbetsgrupp och där deltar aktörer inom Ena. Löpande arbete kan också ske i mindre grupper där ytterligare intressenter relevanta för arbetet kan inbjudas att delta och komma med inspel. 
- För strategiska eller taktiska frågor av vikt kan dessa lyftas till byggblockets chefnivå för behandling och beslut.
	
#### Obesvarade/omtvistade principer, målbild och process

### Tillitsmodell
- Tillitsstrukturen är skild från den tekniska infrastrukturen men realiseras genom tillämpningen av den.

- Granskning av kravefterlevnad är nödvändigt för att säkerställa möjligheten till tillit för en aktör.
- De är de förlitande parterna som själva beslutar vilken nivå av granskning (självdeklaration, intern granskning, extern oberoende granskning) som krävs för behörigheten till en viss tjänst/funktion.
- Det är domänoperatören som är avtalspart och hanterar avtal med anslutande aktörer
	
#### Omtvistade principer, tillitsmodell

- Begreppen organisationstillit – kvalificerad tillit
- Gemensamma nationella tillitsnivåer v:s domänpaket av tillitskrav utifrån nationell katalog
- Organisationstillit inom Ena…?
- Olika tillitsregelverk behövs för olika delar av federationen: Organisations-/medlemstillit, tillit e-tjänst, tillit attributshantering (katalogtillit), tillit autentiseringstjänst/identifierings-och attributstjänst/intygstjänst/IdP, tillit agent/ombud, tillit e-legitimationsutfärdare 
- Alla olika tillitsregelverk delas upp i tillitsnivåer; ev. behövs flexibilitet på enskild kravnivå för att slippa "domän"-specifika underfederationer.
- Oberoende granskning av kravuppfyllnad krävs för höga tillitsnivåer.
- Endast attributsgrupper bör vara domänspecifika. 

### Arkitektur

- Nationell metadatahantering och domänernas metadata…
- Den tekniska lösningen behöver vara relativt enkel för aktörerna att leva upp till eftersom kraven kommer vara beroende på vilken information som ska överföras. Det är tillitskraven som står för säkerheten i behörighetshanteringen.
- Vårt huvudsakliga scenario vi söker att lösa är delegerad åtkomst med förmedling av behörighetsinformation över organisationsgränser för en användare där behörighetsgrundade attribut finns på anropande sida.
- Genom att lösa vårt huvudscenario kommer vi också att hantera de flesta delarna i system-systemauktorisation.
- Den tekniska specifikationen bygger på OAuth och OIDC Federation där anpassning till befintliga SAML-protokoll ska vara möjligt.
- Genom användningen av OAuth och OIDC Federation möjliggörs användningen av trust anchor och trust marks vilket skapar den tekniska förutsättningen för tillitsmodellen.
- Inom den tekniska infrastrukturen etablerar vi en resolverfunktion som förenklar hanteringen av metadata för aktörerna genom att den hämtar relevant metadata utifrån aktuell åtkomstpolicy för behörighet.

#### Omtvistade principer, arkitektur
- OIDC är inte etablerat idag, federationen bör INTE bygga på detta, utan vara en rekommenderad teknisk lösning på "intygshantering". Det är inte prioriterat att ta fram dessa specifikationer i arbetsgruppen.
- En resolverfunktion är en bra sak att ha, men metadata måste hanteras separat i ett metadataregister tillatt börja med.
- Möjliga tjänstekomponenter i federationen (diskuteras): e-legitimation, e-tjänst, anvisnings-	/hänvisningstjänst, identifierings-och attributstjänst (med repository, med uppdragsväljare), regelverkstjänst (med repository), provisioneringstjänst, åtkomstintygsutfördartjänst, identifieringstjänst (beroende till) autentiseringstjänst(er), attributtjänst, stödtjänst metadata, stödtjänst spårbarhet, stödtjänst federations-federationsåtkomst, stödtjänst personuppgifter, stödtjänst API-säkerhet, 
- Möjliga aktörer i federationen: Federationshuvudman (styrgrupp), federationsoperatör, medlem, granskare, e-legutfärdare, identitetsadministratör, attributsadministratör, regelverksadministratör, e-tjänsteägare, IdP-förvaltare, attributsförvaltning med underliggande domänattributförvaltning
