# Ekosystem för digital samverkan
Riktningen i det svenska ramverket för digital samverkan pekar mot etableringen av ett ekosystem mellan offentliga organisationer, näringslivet, civilsamhället och enskilda individer. Det finns därför behov av att tydliggöra de olika roller som aktörer kan ha i detta ekosystem.

Notera att en aktör kan inta flera roller beroende på den specifika federativa kontexten och de behov som uppstår i ett givet samarbetssituation. Till exempel kan en organisation agera förlitande part i en situation, men slutanvändarorganisation i en annan. Det är även möjligt att en aktör intar flera roller samtidigt. Det kan exempelvis handla om att en slutanvändarorganisation också är en leverantör av e-legitimeringstjänst eller när två parter etablerar ömsesidig tillit (vanligt inom digital samverkan maskin till maskin).  

På samma sätt kan ett företag agera som både en leverantör av tekniska lösningar och en mottagare av data och information från offentliga institutioner. Genom att förstå och erkänna denna flexibilitet i rollerna kan aktörerna effektivt samarbeta och dra nytta av varandras resurser och kompetenser för att främja en smidig digital samverkan.

## Roller

- [Användare](#anvandare) 
- [Förlitande part](#fp) 
- [Granskningsorgan](#certorg) 
- [Leverantör av attributkälla](#attributkalla) 
- [Leverantör av e-legitimation](#elegutfardare) 
- [Leverantör av e-legitimeringstjänst](#elegitimeringstjanst) 
- [Leverantör av federativa infrastrukturtjänster](#fedinfra) 
- [Leverantör av kvalificerad e-underskriftstjänst](#kvalificeradbt) 
- [Registrator avrop](#avrop) 
- [Registrator medlemsorganisation](#medlemsreg) 
- [Registrator av tillitsmärken](#tillitsmarken) 
- [Slutanvändarorganisation](#slutanvandarorg) 
- [Tillsynsmyndighet](#tillsynsmyndighet) 
- [IT-leverantörer](#itleverantor) 

## Behov och funktioner
Detta avsnitt redogör för rollernas behov och krav på funktioner, vilka beskrivs utifrån följande perspektiv:

| Perspektiv | Beskrivning |
| :------------- | :------------- |
| **Nyttorealisering** | Detta perspektiv centrerar kring de nyttorealiseringar som uppstår genom trafik och transaktioner i anslutningar som möjliggörs av den federativa infrastrukturen och när digitala tjänster tas i bruk av olika verksamheter. | 
| **Digitala tjänster** | Perspektivet koncentrar sig på de federativa kontext som uppstår genom digital samverkan mellan olika aktörer. Detta perspektiv fokuserar på tjänstedesign samt realisering av digitala tjänster och utveckling av federativa kontext. | 
| **Stödfunktioner** | Detta perspektiv är inriktad på att realisera infrastrukturens grundbult och centrala verktyg och tjänster i syfte att underlätta och minska komplexitet för aktörer att producera och konsumera digitala tjänster genom federation. Det omfattar implementering och förvaltning av centrala processer, operativa och taktiska tjänster samt åtgärder som understödjer en ökande digital samverkan över organisationsgränser i olika federativa kontexter. Perspektivet inkluderar även utbildning, kompetensspridning och support till organisationer som strävar efter att uppnå gemensamma mål genom digital samverkan. En betydande egenskap i detta perspektiv är infrastrukturens distribuerade komplexitet, där ingen enskild aktör har fullständig kontroll över samtliga delar. |
| **Infrastrukturens styrning och regelverk** | I detta perspektiv ligger fokus på att etablera de strategiska ramarna för den digitala infrastrukturen. Det innefattar utformning av gemensamma strukturer, krav, överenskommelser och policyer för att definiera spelreglerna, styra villkoren samt reglera aktörernas ansvar på olika nivåer. |

## Intressentkarta

<a name="anvandare" />

### Användare
Användare är en person som använder en digital tjänst, exempelvis i en webbläsare eller i en mobil app. Privatpersoner som företräder sig själva eller någon annan och medarbetare som utför sin tjänst i en organisation är olika exempel på användare.

#### Användare &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Enkelt att hitta till och förstå olika inloggningsalternativ.<br /> :white_check_mark: Hög tillgänglighet och säkert att logga in. <br /><br />**Funktioner**: <br />:exclamation: Igenkänning i anvisningstjänster, begrepp (UX Copy) och inloggningsflöden. <br /> :exclamation: E-legitimation eller annan typ av digital identitet som kan användas inom ramen för den digitala infrastrukturen. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Digitala tjänster som är användbara och tillgängliga. <br /><br />**Funktioner**: <br />:exclamation: Tillgänglig e-legitimeringstjänst, eller vid behov motsvarande lösning för identitetskontroll med andra typer av digitala identiteter.<br />:exclamation: Smarta infrastrukturstjänster som erbjuder sömlösa eller smidiga övergångar vid realisering av integrationer i den digitala infrastrukturen. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Infrastrukturen ska fungera på ett sådant sätt så att användaren inte ska behöva förstå eller ha kunskap om infrastrukturens olika delar och aktörernas roller i ekosystemet. <br /><br />**Funktioner**: <br />:exclamation: Interaktionsdesign som strävar efter att vara intuitiv, det vill säga upplevs av de flesta användare att följa vanliga användarbeteenden och navigeringsfunktioner som erbjuds i en webbläsare, mobiltelefon eller den miljö som användaren använder.  |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Styrning som verkar för att den e-legitimation som användaren har anskaffat också accepteras av alla förlitande parter. <br />:white_check_mark: Styrning som leder till igenkänning i användbarhet och interaktionsdesign. <br /><br />**Funktioner**: <br />:exclamation: Policy som verkar för att användaren och/eller användarorganisationen (snarare än förlitande part) ska få välja leverantör av e-legitimation så länge krav på tillitsnivå uppfylls. |

<a name="fp" />

### Förlitande part
Förlitande part är den roll som i en federation ansvarar för den digitala tjänstens säkerhetslösning och är den organisation som i en federativ kontext avser att skydda en eller flera digitala tjänster mot obehörig åtkomst.  Beslut om åtkomst baseras på uppgifter som förmedlas av från en betrodd part. Den betrodda parten kan vara en e-legitimeringstjänst eller en slutanvändarorganisation.

#### Förlitande part &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="certorg" />

### Granskningsorgan
Roll i ekosystemet som granskar och intygar att digitala tjänster och dess leverantörer uppfyller de krav som gäller. Rollern kan dels intas utifrån specifika krav i en eller flera federativa kontexter, men den kan också inbegripa certifieringsorgan som granskar och verifierar att organisationen uppfyller krav en standard.

#### Granskningsorgan &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="attributkalla" />

### Leverantör av attributkälla
Roll som ansvarar för värdemängder i en katalog eller register med utgångspunkt i någon form av förordning, instruktion, regleringsbrev eller officiellt uppdrag. Skatteveret är exempel på en aktör som besitter denna roll för folkbokföringsuppgifter. 

#### Leverantör av attributkälla &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="elegutfardare" />

### Leverantör av e-legitimation
Rollen tilldelas leverantörer av granskade och godkända e-legitimationer i enlighet med tillitsramverket för _Svensk e-legitimation_. Rollen kan även kallas för _utfärdare av e-legitimation_.

#### Leverantör av e-legitimation &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="elegitimeringstjanst" />

### Leverantör av e-legitimeringstjänst
Rollen tilldelas parter som utför identifiering av användare i en federativ kontext. Identifiering sker alltid med en godkänd e-legitimation och genom _direkt e-legitimering_, som innebär att intyget levereras från den aktör som utfärdar e-legitimationen eller av motsvarande kvalificerade tillitskedja.

#### Leverantör av e-legitimeringstjänst &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="fedinfra" />

### Leverantör av federativa infrastrukturtjänster
Rollen tilldelas parter som utvecklar och ansvarar för gemensamma specifikationer, verktyg och/eller infrastrukturtjänster i en eller flera federativa kontexter.

#### Leverantör av federativa infrastrukturtjänster &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="kvalificeradbt" />

### Leverantör av kvalificerad e-underskriftstjänst 
Rollen tilldelas leverantör av e-underskriftstjänst som har genomgått granskning och certifiering av kvalificerad betrodd tjänst är enligt eIDAS-förordningen.

#### Leverantör av kvalificerad e-underskriftstjänst &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="avrop" />

### Registrator avrop
Rollen intas av parter som administrerar och ansvarar för information avseende prissättning, kommersiella villkor, avrop och andra uppgifter som kan underlätta etablering av federerad interoperabilitet för offentliga aktörer.

#### Registrator avrop &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="medlemsreg" />

### Registrator medlemsorganisation
Rollen tilldelas parter som ansvarar för registrering av medlemmar (det vill säga organisationer och deras digitala tjänster) i en eller flera federativa kontexter. I ansvaret ingår även administration och åtgärder för kvalitetssäkring av metadata.

Följande kontroller utförs inom rollens ansvarsområde:
1. *Juridiska status*
Kontrollera att organisationen som är ansluten till den federativa infrastrukturen är registrerad och har en korrekt organisationsnummer och juridisk status, t ex kommun, aktiebolag eller ideell förening.
2. *F-skattsedel*
Om organisationen bedriver näringsverksamhet i Sverige, kontrollera att organisationen har en giltig F-skattsedel.
3. *Behöriga företrädare*
Identifiera och administrera behörigheter för vilka personer inom organisationen som är behöriga att teckna avtal och företräda organisationen gentemot tredje part inom ramen för den federativa infrastrukturen. Kontrollera att dessa personer är korrekt registrerade hos Bolagsverket eller motsvarande myndighet.
4. *Behöriga administratörer*
Se till att organisationen har utsett behöriga administratörer som ansvarar för hantering av metadata om organisationens tjänster och de säkerhetslösningar som krävs för kontakt och åtkomst till administrationsgränssnitt inom ramen för den federativa infrastrukturen.
5. *Affärsmål och strategi*
Diskutera organisationens affärsmål och strategi för att säkerställa att de är förenliga med inriktningen för den digitala infrastrukturen och att det finns potential för ett långsiktigt samarbete. Diskutera även hur organisationens affärsmål och strategi kan stödja eller förbättra den digitala infrastrukturen.
6. *Avtal*
Säkerställa att anslutningsavtal tecknas för att reglera ansvarsförhållanden och lämpliga rutiner för hantering av organisationens ansvar gentemot övriga parter som brukar den digitala infrastrukturen. I avtalet bör det också ingå reglering av krav på att organisationen följer gällande bestämmelser och lagar, t ex korrekt reviderad bokföring, avtal för personuppgiftsbehandling och dataskydd.
7. Ytterligare kontroller kan tillkomma i särskilda fall och utifrån behov i en federativ kontext, exempelvis uppföljning av:
    1. *Ekonomisk stabilitet*
Vid misstanke om ekonomiska oegentligheter begära att få ta del av organisationens senaste årsredovisning för att bedöma dess ekonomiska stabilitet och utveckling.
    2. *Försäkringar och tillstånd*
Se till att organisationen har nödvändiga försäkringar och tillstånd för sin verksamhet, t.ex. ansvarsförsäkring och eventuella branschspecifika tillstånd.

 
#### Registrator medlemsorganisation &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="tillitsmarken" />

### Registrator av tillitsmärken
Rollen intas av parter som administrerar och ansvarar för information om tillitsmärken, certifieringar och/eller motsvarande tillitsparametrar för digitala tjänster i en eller flera federativa kontexter.

#### Registrator tillitsmärken &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="slutanvandarorg" />

### Slutanvändarorganisation
Rollen tilldelas parter som ansvarar för sin användares identitets- och behörighetsinformation. Uppgifter verifieras vid användarens inloggning och förmedlas genom ett intyg till tjänsteleverantören.

#### Slutanvändarorganisation &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="tillsynsmyndighet" />

### Tillsynsmyndighet
Rollen intas av kontrollmyndigheter med ansvar att se till att underordnade organisationer lever upp till de krav som ställs inom en viss verksamhet eller ett visst verksamhetsområde. Regeringen fattar beslut om vilka tillsynsmyndigheter som ska finnas.

#### Tillsynsmyndighet &ndash; behov och funktioner 

| Perspektiv | Roll: Användare |
| :------------- | :------------- |
| Nyttorealisering | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Digitala tjänster | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Stödfunktioner | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |
| Infrastrukturens styrning och regelverk | **Behov**: <br />:white_check_mark: Lorem ipsum. <br /><br />**Funktioner**: <br />:exclamation: Lorem ipsum. |

<a name="itleverantor" />

### IT-leverantörer
Leverantörer som erbjuder produkter, tjänster och/eller helhetslösningar för identitets- och behörighetshantering i federativa kontext.

#### IT-leverantörer &ndash; behov och funktioner 

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
