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
- Användning
- Leverans av tjänster
- Leverans av infrastruktur
- Styrning

Tabellen nedan redogör för dessa fyra olika perspektiv.

| Perspektiv | Beskrivning |
| :------------- | :------------- |
| **Nyttorealisering** | Detta perspektiv centrerar kring de nyttorealiseringar som uppstår genom trafik och transaktioner i anslutningar som möjliggörs av den federativa infrastrukturen och när digitala tjänster tas i bruk av olika verksamheter. | 
| **Digitala tjänster** | Perspektivet koncentrar sig på de federativa kontext som uppstår genom digital samverkan mellan olika aktörer. Detta perspektiv fokuserar på tjänstedesign samt realisering av digitala tjänster och utveckling av federativa kontext. | 
| **Stödfunktioner** | Detta perspektiv är inriktad på att realisera infrastrukturens grundbult och centrala verktyg och tjänster i syfte att underlätta och minska komplexitet för aktörer att producera och konsumera digitala tjänster genom federation. Det omfattar implementering och förvaltning av centrala processer, operativa och taktiska tjänster samt åtgärder som understödjer en ökande digital samverkan över organisationsgränser i olika federativa kontexter. Perspektivet inkluderar även utbildning, kompetensspridning och support till organisationer som strävar efter att uppnå gemensamma mål genom digital samverkan. En betydande egenskap i detta perspektiv är infrastrukturens distribuerade komplexitet, där ingen enskild aktör har fullständig kontroll över samtliga delar. |
| **Infrastrukturens styrning och regelverk** | I detta perspektiv ligger fokus på att etablera de strategiska ramarna för den digitala infrastrukturen. Det innefattar utformning av gemensamma strukturer, krav, överenskommelser och policyer för att definiera spelreglerna, styra villkoren samt reglera aktörernas ansvar på olika nivåer. |

## Intressentkarta

<a name="anvandare" />

### Användare

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Enkelt att hitta till och förstå olika inloggningsalternativ.<br /> :white_check_mark: Hög tillgänglighet och säkert att logga in. <br /><br />**Funktioner**: <br />:exclamation: Vägledning, stöd och designriktlinjer till utvecklare av e-tjänster. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Digitala tjänster som är användbara och tillgängliga. <br /><br />**Funktioner**: <br />:exclamation: Smarta infrastrukturstjänster som erbjuder sömlösa eller smidiga övergångar vid realisering av integrationer i den digitala infrastrukturen. <br />:exclamation: Vägledning, och stöd till utvecklare av e-tjänster. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Infrastrukturen ska fungera på ett sådant sätt så att användaren inte ska behöva förstå eller ha kunskap om infrastrukturens olika delar och aktörernas roller i ekosystemet. <br /><br />**Funktioner**: <br />:exclamation: Förvaltningsgemensamt tekniskt ramverk.<br />:exclamation: Vägledning och stöd till utvecklare av e-tjänster.  |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Styrning som verkar för att den e-legitimation som användaren har anskaffat också accepteras av alla förlitande parter. <br />:white_check_mark: Styrning som leder till igenkänning i användbarhet och interaktionsdesign. <br /><br />**Funktioner**: <br />:exclamation: Valfrihetssystem och kravställning på tjänsteleverantörer. <br />:exclamation: Designriktlinjer för utvecklare av e-tjänster. |

<a name="fp" />

### Förlitande part

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="certorg" />

### Granskningsorgan

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="attributkalla" />

### Leverantör av attributkälla

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="elegutfardare" />

### Leverantör av e-legitimation

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="elegitimeringstjanst" />

### Leverantör av e-legitimeringstjänst

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="fedinfra" />

### Leverantör av federativa infrastrukturtjänster

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="kvalificeradbt" />

### Leverantör av e-underskriftstjänst 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="avrop" />

### Registrator avrop

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="medlemsreg" />

### Registrator medlemsorganisation

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="tillitsmarken" />

### Registrator av tillitsmärken

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="slutanvandarorg" />

### Slutanvändarorganisation

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="tillsynsmyndighet" />

### Tillsynsmyndighet

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="itleverantor" />

### IT-leverantörer

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |


---------

:arrow_backward: [Tillbaka](README.md)

<sub>Senaste uppdatering: 13 mars 2024</sub>

<p>&nbsp;</p>
<p>
<img align="left" src="../images/Ena-logo.png" width="25%" Height="25%"></img>
<img align="right" src="../images/NextGenEU-logo.png" width="25%" Height="25%"></img>
</p>
