# Ekosystem för digital samverkan
Riktningen i det svenska ramverket för digital samverkan pekar mot etableringen av ett ekosystem mellan offentliga organisationer, näringslivet, civilsamhället och enskilda individer. Det finns därför behov av att tydliggöra de olika roller som aktörer kan ha i detta ekosystem.

Notera att en aktör kan inta flera roller beroende på den specifika federativa kontexten och de behov som uppstår i ett givet samarbetssituation. Till exempel kan en organisation agera förlitande part i en situation, men slutanvändarorganisation i en annan. Det är även möjligt att en aktör intar flera roller samtidigt. Det kan exempelvis handla om att en slutanvändarorganisation också är en leverantör av e-legitimeringstjänst eller när två parter etablerar ömsesidig tillit (vanligt inom digital samverkan maskin till maskin).  

På samma sätt kan ett företag agera som både en leverantör av tekniska lösningar och en mottagare av data och information från offentliga institutioner. Genom att förstå och erkänna denna flexibilitet i rollerna kan aktörerna effektivt samarbeta och dra nytta av varandras resurser och kompetenser för att främja en smidig digital samverkan.


| Roll  | Beskrivning |
| :------------- | :------------- |
| [Användare](#anvandare) | En person som använder en digital tjänst, exempelvis i en webbläsare eller i en mobil app. Privatpersoner som företräder sig själva eller någon annan och medarbetare som utför sin tjänst i en organisation är olika exempel på användare. |
| [Förlitande part](#fp) | Den roll som i en federation ansvarar för den digitala tjänstens säkerhetslösning och är den organisation som i en federativ kontext avser att skydda en eller flera digitala tjänster mot obehörig åtkomst.  Beslut om åtkomst baseras på uppgifter som förmedlas av från en betrodd part. Den betrodda parten kan vara en e-legitimeringstjänst eller en slutanvändarorganisation. |
| [Granskningsorgan](#certorg) | Aktör i ekosystemet som granskar och intygar att digitala tjänster och dess leverantörer uppfyller de krav som gäller. Rollern kan dels intas utifrån specifika krav i en eller flera federativa kontexter, men den kan också inbegripa certifieringsorgan som granskar och verifierar att organisationen uppfyller krav en standard.  |
| [Leverantör av attributkälla](#attributkalla) | Part som ansvarar för värdemängder i en katalog eller register utifrån någon form av förordning, instruktion, regleringsbrev eller officiellt uppdrag.  |
| [Leverantör av e-legitimation](#elegutfardare) | Leverantör av granskade och godkända e-legitimationer i enlighet med tillitsramverket för _Svensk e-legitimation_. Även kallad _utfärdare av e-legitimation_.|
| [Leverantör av e-legitimeringstjänst](#elegitimeringstjanst) | Part som utför identifiering av användare i en federativ kontext. Identifiering sker alltid med en godkänd e-legitimation och genom _direkt e-legitimering_, som innebär att intyget levereras från den aktör som utfärdar e-legitimationen eller motsvarande kvalificerade tillitskedja. |
| [Leverantör av federativa infrastrukturtjänster](#fedinfra) | Part som utvecklar och ansvarar för gemensamma specifikationer, verktyg och/eller infrastrukturtjänster i en eller flera federativa kontexter. |
| [Leverantör av kvalificerad e-underskriftstjänst](#kvalificeradbt) | Leverantör av e-underskriftstjänst som har genomgått granskning och certifiering av kvalificerad betrodd tjänst är enligt eIDAS-förordningen. |
| [Registrator avrop](#avrop) | Part som administrerar och ansvarar för information avseende prissättning, kommersiella villkor, avrop och andra uppgifter som kan underlätta etablering av federerad interoperabilitet för offentliga aktörer. |
| [Registrator medlemsorganisation](#medlemsreg) | Part som ansvarar för registrering av medlemmar (det vill säga organisatiner och deras digitala tjänster) i en eller flera federativa kontexter. I ansvaret ingår även administration och åtgärder för kvalitetssäkring av metadata. |
| [Registrator av tillitsmärken](#tillitsmarken) | Part som administrerar och ansvarar för information om tillitsmärken, certifieringar och/eller motsvarande tillitsparametrar för digitala tjänster i en eller flera federativa kontexter. |
| [Slutanvändarorganisation](#slutanvandarorg) | Part som ansvarar för sin användares identitets- och behörighetsinformation. Uppgifter verifieras vid användarens inloggning och förmedlas genom ett intyg till tjänsteleverantören. |
| [Tillsynsmyndighet](#tillsynsmyndighet) | En kontrollmyndighet med ansvar att se till att underordnade organisationer lever upp till de krav som ställs inom en viss verksamhet eller ett visst verksamhetsområde. Regeringen fattar beslut om vilka tillsynsmyndigheter som ska finnas. |
| Utfärdare av e-legitimation | Se _leverantör av e-legitimation_. |
| [IT-leverantörer](#itleverantor) | Leverantörer som erbjuder produkter, tjänster och/eller helhetslösningar för identitets- och behörighetshantering i federativa kontext. |

## Behov och funktioner
Detta avsnitt redogör för rollernas behov och krav på funktioner, vilka beskrivs utifrån följande perspektiv:
- **Användning**, som inkluderar trafik, transaktioner och nyttorealisering som uppstår som en effekt av att tjänster tas i bruk av verksamheter som nyttjar den digitala infrastrukturen.
- **Leverans av tjänster**, som inkluderar de federativa kontext som uppstår genom samverkan mellan olika aktörer inom ramen för den digitala infrastrukturen.
- **Leverans av infrastruktur**, som omfattar centrala processer, åtgärder och tjänster, vilka realiserar den digitala infrastrukturen och skapar förutsättningar för aktörer att producera och konsumera digitala tjänster i federativa kontext.  
- **Styrning**, som inkluderar överenskommelser, policyer och strategisk struktur för den digitala infrstrukturen.

<a name="anvandare" />

### Användare

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Styrning | **Behov**: <br />:white_check_mark: Styrning som verkar för att den e-legitimation som användaren har anskaffat också accepteras av alla förlitande parter. <br />:white_check_mark: Styrning som leder till igenkänning i användbarhet och interaktionsdesign. <br /><br />**Funktioner**: <br />:exclamation: Valfrihetssystem och kravställning på tjänsteleverantörer. <br />:exclamation: Designriktlinjer för utvecklare av e-tjänster. |
| Leverans av infrastruktur | **Behov**: <br />:white_check_mark: Infrastrukturen ska fungera på ett sådant sätt så att användaren inte ska behöva förstå eller ha kunskap om infrastrukturens olika delar och aktörernas roller i ekosystemet. <br /><br />**Funktioner**: <br />:exclamation: Förvaltningsgemensamt tekniskt ramverk.<br />:exclamation: Vägledning och stöd till utvecklare av e-tjänster.  |
| Leverans av tjänster | **Behov**: <br />:white_check_mark: Enkelt att hitta till och säkert att logga in till de digitala tjänster som erbjuds i ekosystemet. <br /><br />**Funktioner**: <br />:exclamation: Vägledning och stöd till utvecklare av e-tjänster. |
| Användning | **Behov**: <br />:white_check_mark: Digitala tjänster som är användbara och tillgängliga. <br /><br />**Funktioner**: <br />:exclamation: Smarta infrastrukturstjänster som erbjuder sömlösa eller smidiga övergångar vid realisering av integrationer i den digitala infrastrukturen. |


<a name="fp" />

### Förlitande part



<a name="certorg" />

### Granskningsorgan


<a name="attributkalla" />

### Leverantör av attributkälla


<a name="elegutfardare" />

### Leverantör av e-legitimation


<a name="elegitimeringstjanst" />

### Leverantör av e-legitimeringstjänst


<a name="fedinfra" />

### Leverantör av federativa infrastrukturtjänster


<a name="kvalificeradbt" />

### Leverantör av e-underskriftstjänst 


<a name="avrop" />

### Registrator avrop


<a name="medlemsreg" />

### Registrator medlemsorganisation


<a name="tillitsmarken" />

### Registrator av tillitsmärken


<a name="slutanvandarorg" />

### Slutanvändarorganisation


<a name="tillsynsmyndighet" />

### Tillsynsmyndighet



<a name="itleverantor" />

### IT-leverantörer



---------

:arrow_backward: [Tillbaka](README.md)

<sub>Senaste uppdatering: 13 mars 2024</sub>

<p>&nbsp;</p>
<p>
<img align="left" src="../images/Ena-logo.png" width="25%" Height="25%"></img>
<img align="right" src="../images/NextGenEU-logo.png" width="25%" Height="25%"></img>
</p>
