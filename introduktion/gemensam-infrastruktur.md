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

OIDF åstadkommer detta genom en decentraliserad modell som bryter ner ansvaret för registrering, kontroll och administration till flera aktörer. I denna modell behöver parter som ingår i federationen ta ett större egenansvar för att publicera data (*metadata*) om sina tjänster (*entiteter*). På så sätt kan OIDF växa fram i en dynamisk process där bördan för att upprätta och underhålla federationen fördelas mellan flera aktörer utan att för den sakens skull göra avkall på kraven om kvalitet och tillit. 

## Grundläggande struktur
### Delegering
Till skillnad från en traditionell federation där registrering av alla tjänster administreras av en central federationsoperatör, organiserar OIDF en delegerad modell som fördelar registreringsansvaret till olika aktörer som bildar en kedja av betrodda förbindelsepunkter. Denna modell erbjuder hierarkier av betrodda förbindelsepunkter som i standarden kallas för <mark>*tillitsankare*</mark> och <mark>*intermediära entiteter*</mark>.

I stället för separata federationer med vattentäta skott, erbjuder OIDF samexistens av olika federativa kontext inom ramen för en samlad förvaltningsövergripande digital infrastruktur. En federativ kontext kan liknas som en traditionell federation, men skiljer sig i sin distributiva natur och nätverksstruktur. Varje federativ kontext definieras av ett *tillitsankare* som utgör toppen på en tillitskedja i federationen. Den används för att validera uppgifter om en specifik digital tjänst i nätverket av tjänster via en eller flera betrodda intermediära förbindelsepunkter. *Tillitsankaret* bestämmer reglerna för valideringen. Dessa regler avgör i sin tur vilka *metadata* och *tillitsmärken* som accepteras för en specifik digital tjänst.

En federativ kontext kan representera ett specifikt behovsområde eller verksamhetsdomän som samlar en grupp av aktörer kring förmedling av strukturerade data om identiteter och behörighetsgrundande information. Kontexten definieras genom gemensamma syften, behov, datasemantik, tillitsramverk, regler och policyer. 

Exempel på federativa kontext: 
-	Direkt e-legitimering för inloggning till webbaserade digitala tjänster. 
-	Delegerad beslut för åtkomst till digitala resurser inom hälso- och sjukvård.
-	Delegerad beslut för åtkomst till digitala resurser inom skola och utbildning.

### Metadata och Tillitsmärke
Data om de ingående digitala tjänsterna i federationen utgörs av <mark>*metadata*</mark> och <mark>*tillitsmärken*</mark> enligt nedan:

<dl>
  <dt>Metadata</dt>
  <dd>Konfigurationsdata för en digital tjänst (*entitet*) inom ramen för det som är tillåtet, givet de standarder 
    och profiler som tillämpas och de tillitsmärken som utfärdats för tjänsten. <br /><br />Exempel på metadata är 
    information om vilka algoritmer som stöds samt hur klienter måste identifiera sig för att hämta ut ett ID-token.
    <br /><br />*Metadata* följer de metadatastandarder som upprättats för respektive tjänst, vilket för OpenID Connect
    typiskt är *metadata* för en leverantör av identitetsintygstjänst, även kallad *OpenID Provider (OP)*, eller en 
    förlitande part (exempelvis en e-tjänst som begär identitetskontroll).</dd>
  <dt>Tillitsmärke</dt>
  <dd>Ett signerat intyg från en betrodd utfärdare av respektive *tillitsmärke*. Varje *tillitsmärke* intygar att en digital
    tjänst uppfyller en definierad kravmassa, eller är auktoriserad att utföra/begära vissa tjänster. <br /><br />Exempel 
    på *tillitsmärke* är certifiering att tillhandahålla legitimeringstjänst på tillitsnivå 3 enligt *tillitsramverk för
    Svensk e-legitimation*. <br /><br />OIDF erbjuder även en specialvariant av *tillitsmärken* som kännetecknas av att vara
    självutfärdade. Det innebär att en digital tjänst kan utfärda ett sådant *tillitsmärke* åt sig själv genom 
    självdeklaration och därmed undantas från de valideringsregler som vanligtvis gäller för *tillitsmärken* utfärdade av en
    betrodd utfärdare. Ett självutfärdat *tillitsmärke* behöver exempelvis inte valideras mot ett *tillitsankare*.</dd>
</dl>

Uppdelningen mellan <mark>tillitsmärke</mark> och <mark>*metadata*</mark> är en av nycklarna som möjliggör delegerad registrering av tjänster. Den aktör som är betrodd att hantera registrering av metadata är inte nödvändigtvis betrodd att intyga tillitsmärken. Likaså, behöver den aktör som är betrodd att intyga tillitsmärken, inte nödvändigtvis ha förmågan att ombesörja adekvat registrering av metadata. Mycket kan därför vinnas genom att dela upp registrering och administration av *metadata* respektive *tillitsmärken*.

Vinsterna är betydande då denna uppdelning erbjuder en möjlighet att bygga stora federationer där ingen enskild aktör måste bära hela det administrativa ansvaret för federationen. Federationsoperatörens roll kan utvecklas i ett distribuerat nätverk som delegerar registrering av digitala tjänster till lämpliga *intermediära entiteter* och ansluter *utfärdare av tillitsmärken* till sitt *tillitsankare*. Därigenom utformas en dynamik som är mer skalbart och framtidssäkrat än den traditionella federationsoperatörsrollen, som förväntas att upprätta rutiner för administration och auktorisation av samtliga registrerade tjänster i federationen.

### Hämtning och validering av data
OIDF specificerar konkreta regler för hur metadata och tillitsmärken hämtas och valideras i infrastrukturen mot ett *tillitsankare*.

Detta är process som i grova drag innefattar följande steg:
1.	Lokalisera metadata för motpartens digitala tjänst (*entitet*).
2.	Hitta en tillitskedja från motpartens tjänst via mellanliggande förbindelsepunkter (*intermediära entiteter*) till valt *tillitsankare*.
3.	Validera metadata och tillitsmärken för motpartens tjänst enligt de regler som sätts av gällande *federationskontext*.

Detta är i praktiken en ganska komplicerad och resurskrävande operation, eftersom data från en rad olika källor behöver inhämtas och valideras.

Av detta skäl har OIDF introducerat en valideringstjänst, som benämns <mark>*resolver*</mark> eller *resolve endpoint*, vars uppgift är att hantera processen att inhämta och validera data åt en federationsansluten tjänst. I stället för att göra en komplett valideringsprocess enligt ovan, så kan tjänsten skicka en enkel begäran till valideringstjänsten, som returnerar filtrerade och validerade data för begärd tjänst i kontexten av valt *tillitsankare*. Detta innebär:
-	Metadata valideras och filtreras genom federationskontextens metadata policy.
-	Validering av tillitsmärken.

## Federationskontext
Federationskontext är de regler som gäller när en federationsansluten tjänst (*entitet*) valideras genom ett specifikt *tillitsankare*. Dessa regler specificeras för varje koppling mellan ett *tillitsankare* och varje underställd förbindelsepunkt (*intermediär entitet*). Reglerna uttrycks i ett aktörsintyg för varje förbindelsepunkt. Ett *tillitsankare* specificerar i varje utfärdat aktörsintyg de begränsningar som gäller för en förbindelsepunkt. Sådana begränsningar kan gälla vilka typer av digitala tjänster som får registreras samt vilka krav som måste ställas på registrerade tjänsters  metadata. Två viktiga begränsningar som kan specificeras är:
1. Metadatapolicy
2. Godkända utfärdare av tillitsmärke

### Metadatapolicy
En metadatapolicy är en uppsättning regler som styr innehåller i metadata för en federationsansluten tjänst (*entitet*), vars uppgifter finns registrerade under en förbindelsepunkt (*intermediär entitet*). Varje förbindelsepunkt kan sedan ytterligare begränsa denna metadatapolicy för sina underordnade förbindelsepunkter.

En metadatapolicy kan för varje definierad metadataparameter specificera regler, såsom krav på:
-	om ett värde måste vara satt
-	värden som måste vara satta
-	värden som får vara satta
-	specifikt värde som måste vara satt
- och så vidare

<dl>
  <dt>Exempel metadatapolicy</dt>
  <dd>En OP kan specificera hur en e-tjänst måste autentisera sig för att hämta ut ett ID-token.  
    Detta specificeras i metadataparametern: <code>token_endpoint_auth_methods_supported</code>.
    <br /><br />Typiska giltiga värden för denna parameter är <code>client_secret_post</code>, 
    <code>client_secret_basic</code>, <code>client_secret_jwt</code>, och <code>private_key_jwt</code>.
    <br /><br />En federationskontext kan begränsa antalet giltiga autentiseringsmetoder genom att specificera 
    en policy som styr över giltiga värden. Exempelvis kan giltiga värden begärnsas till 
    <code>client_secret_jwt</code>, och <code>private_key_jwt</code>. <br /><br />När en federationsansluten 
    tjänsts metadata valideras i denna federationskontext kommer endast de metadatavärden som stöds av 
    definierad policy att returneras, även om tjänsten har deklarerat stöd för andra alternativ.</dd>
</dl>

### Tillitsmärken
