<p><img align="right" src="../images/Ena-logo.png" width="25%" Height="25%"></img></p>
<p>&nbsp;</p>

:arrow_backward: [Tillbaka](README.md)

<sup>Senaste uppdatering: 12 november 2024</sup>

---------

# OpenID Federation &ndash; en introduktion

Registrering och distribution av tillitsinformation är en resurskrävande men kritisk del i en fungerande infrastruktur för öppen samverkan över organisationsgränser. Att lösa denna uppgift har visat sig vara både svårt och komplicerat i traditionella federationer där administration och kontroll koncentreras till en sammanhållen federationsoperatör.

Den centraliserade modellen för federationer som varit styrande i flera decennier ställer stora krav på federationsoperatören med avseende på såväl administration som kontroll av aktörer och deras uppfyllnad av viktiga specifikationer och regelverk. Även om federationsoperatören kan införa olika former av delegerat ansvar, så är det i slutändan federationsoperatören som ikläder sig det yttersta ansvaret och är den som signerar och publicerar betrodd information om alla aktörer i federationen.

## Innehållsförteckning
1. [**OpenID federation**](#oidf-intro)

2. [**Grundläggande struktur**](#grund)

    2.1. [Delegering](#delegering)

    2.2. [Metadata och tillitsmärken](#metadata-tm)

    2.3. [Hämtning och validering av data](#validering)

3. [**Federationskontext**](#federationskontext)

    3.1. [Metadatapolicy](#metadatapolicy)

    3.2. [Utfärdande av tillitsmärken](#utfardatm)

4. [**Registrering**](#registrering)

    4.1. [Att upprätta en intermediär förbindelsepunkt](#upprattaie)

    4.2.  [Att registrera en tjänst](#entitetsregistrering)

5. [**Möjlighet till en generell lösning**](#generell)

    5.1. [SAML-metadata via OIDF](#saml-oidf)

6. [**Exempel på användningsfall**](#usecase)

    6.1. [Leverans av identitetsintyg med OpenID Connect](#op)

    6.2. [Agera förlitande part med OpenID Connect](#rp)

    6.3. [Tillämpa OIDF för SAML på traditionellt vis](#samlservice)

<br />
<a name="oidf-intro"/>

## OpenID federation 
*OpenID Federation (OIDF)*[^1] definierar en digital infrastruktur som kan försörja etablering av tillit mellan federationsparter genom betrodda förbindelsepunkter i ett distribuerat nätverk. Detta erbjuder exempelvis möjlighet för en förlitande part och en *[intygstjänst](ordlista.md#intygstjanst)* hos en annan part att etablera tillit mellan sig även om parterna inte skulle ha ett direktförhållande till varandra. Etablering av tillit hanteras genom en delegerad kedja för administration och distribution av tillitsinformation. 

OIDF tillför en helt ny öppen och delegerad modell för administration och distribution av tillitsinformation om de tjänster (*entiteter*) som ingår i federationen. Även om OIDF är framtagen av OpenID Foundation, som har utvecklat *OpenID Connect*, är det till trots öppen även för tillitsinformation som redan i sin grundform stödjer andra protokoll, till exempel *OAuth* för delegering av åtkomsbeslut. Faktum är att OIDF har väldigt få begränsningar för vilka typer av digitala tjänster och protokoll som kan ingå i federationen. Det finns med andra ord inget som hindrar att OIDF byggs ut och används som basinfrastruktur för att hantera registrering av digitala tjänster som tillämpar andra typer av protokoll, såsom *SAML*.

Genom en decentraliserad modell som fördelar ansvaret för registrering, kontroll och administration till flera aktörer i federationen, behöver varje part ta ett större egenansvar för att publicera data (*metadata*) om sina tjänster. Ur detta växer ett nätverk genom en dynamisk process där bördan för att upprätta och underhålla federationen fördelas mellan flera betrodda aktörer utan att för den sakens skull göra avkall på kraven om kvalitet och säkerhet. 

<a name="grund"/>

## Grundläggande struktur

<a name="delegering"/>

### Delegering
Till skillnad från en traditionell federation där registrering av alla tjänster administreras av en federationsoperatör, enligt en centraliserad modell, organiserar OIDF en delegerad modell som fördelar registreringsansvaret till olika aktörer, vilka bildar en kedja av betrodda förbindelsepunkter för etablering av tillit. Denna modell erbjuder hierarkier av betrodda förbindelsepunkter som i standarden kallas för <mark>*tillitsankare*</mark> och <mark>*intermediära entiteter*</mark>.

I stället för separata federationer med vattentäta skott, erbjuder OIDF samexistens av olika federativa kontext inom ramen för en samlad förvaltningsövergripande digital infrastruktur. En federativ kontext kan liknas som en traditionell federation, men skiljer sig i sin distributiva natur och nätverksstruktur. Varje federativ kontext definieras av ett *tillitsankare* som utgör toppen på en tillitskedja i federationen. Den används för att validera uppgifter om en specifik digital tjänst i nätverket av tjänster via en eller flera betrodda intermediära förbindelsepunkter. *Tillitsankaret* bestämmer reglerna för valideringen. Dessa regler avgör i sin tur vilka <mark>*metadata*</mark> och <mark>*tillitsmärken*</mark> som accepteras för en specifik digital tjänst.

En federativ kontext kan representera ett specifikt behovsområde eller verksamhetsdomän som samlar en grupp av aktörer kring förmedling av strukturerade data om identiteter och behörighetsgrundande information. Kontexten definieras genom gemensamma syften, behov, datasemantik, tillitsramverk, regler och policyer. 

<a name="metadata-tm"/>

### Metadata och tillitsmärken
Data om de ingående digitala tjänsterna i federationen utgörs av <mark>*metadata*</mark> och <mark>*tillitsmärken*</mark> enligt nedan:

<dl>
  <dt>Metadata</dt>
  <dd>Konfigurationsdata för en digital tjänst (<i>entitet</i>) inom ramen för det som är tillåtet, givet de standarder 
    och profiler som tillämpas och de <i>tillitsmärken</i> som utfärdats för tjänsten. <br /><br />Exempel på
    <i>metadata</i> är information om vilka algoritmer som stöds samt hur klienter måste identifiera sig för att hämta 
    ut ett ID-token. <br /><br /><i>Metadata</i> följer de metadatastandarder som upprättats för respektive tjänst, 
    vilket för OpenID Connect typiskt är <i>metadata</i> för en leverantör av *identitetsintygstjänst*, även kallad 
    <i>OpenID Provider (OP)</i>, eller en förlitande part (exempelvis en e-tjänst som begär identitetskontroll).</dd>
  <dt>Tillitsmärke</dt>
  <dd>Ett signerat intyg från en betrodd utfärdare av respektive <i>tillitsmärke</i>. Varje <i>tillitsmärke</i> 
    intygar att en federationsansluten tjänst (<i>entitet</i>) uppfyller en definierad kravmassa, eller är 
    auktoriserad att utföra/begära vissa tjänster. <br /><br />Exempel på <i>tillitsmärke</i> är certifiering 
    att tillhandahålla identitetsintygstjänst på tillitsnivå 3 enligt <i>tillitsramverk för Svensk e-legitimation</i>. 
    <br /><br />OIDF erbjuder även en specialvariant av <i>tillitsmärken</i> som kännetecknas av att vara
    självutfärdade. Det innebär att en digital tjänst kan utfärda ett sådant <i>tillitsmärke</i> åt sig själv 
    genom självdeklaration och därmed undantas från de valideringsregler som vanligtvis gäller för <i>tillitsmärken</i>
    utfärdade av en betrodd utfärdare. Ett självutfärdat <i>tillitsmärke</i> behöver exempelvis inte valideras mot 
    ett <i>tillitsankare</i>.</dd>
</dl>

----------------------

Uppdelningen mellan <mark>*tillitsmärke*</mark> och <mark>*metadata*</mark> är en av nycklarna som möjliggör delegerad registrering av tjänster. Den aktör som är betrodd att hantera registrering av *metadata* är inte nödvändigtvis betrodd att intyga *tillitsmärken*. Likaså, behöver den aktör som är betrodd att intyga *tillitsmärken*, inte nödvändigtvis ha förmågan att ombesörja adekvat registrering av *metadata*. Mycket kan därför vinnas genom att dela upp registrering och administration av *metadata* respektive *tillitsmärken*.

Vinsterna är betydande då denna uppdelning erbjuder en möjlighet att bygga stora federationer där ingen enskild aktör måste bära hela det administrativa ansvaret för federationen. Federationsoperatörens roll kan utvecklas i ett distribuerat nätverk som delegerar registrering av digitala tjänster till lämpliga *intermediära entiteter* och ansluter *utfärdare av tillitsmärken* till sitt *tillitsankare*. Därigenom utformas en dynamik som är mer skalbart och framtidssäkrat än den traditionella federationsoperatörsrollen, som förväntas att upprätta rutiner för administration och auktorisation av samtliga registrerade tjänster i federationen.

<a name="validering"/>

### Hämtning och validering av data
OIDF specificerar konkreta regler för hur *metadata* och *tillitsmärken* hämtas och valideras i infrastrukturen mot ett *tillitsankare*.

Detta är process som i grova drag innefattar följande steg:
1.	Lokalisera *metadata* för motpartens digitala tjänst (*entitet*).
2.	Hitta en tillitskedja från motpartens tjänst via mellanliggande förbindelsepunkter (*intermediära entiteter*) till valt *tillitsankare*.
3.	Validera *metadata* och *tillitsmärken* för motpartens tjänst enligt de regler som sätts av gällande *federationskontext*.

Detta är i praktiken en ganska komplicerad och resurskrävande operation, eftersom data från en rad olika källor behöver inhämtas och valideras.

Av detta skäl har OIDF introducerat en valideringstjänst, som benämns <mark>*resolver*</mark> eller *resolve endpoint*, vars uppgift är att hantera processen att inhämta och validera data åt en federationsansluten tjänst. I stället för att göra en komplett valideringsprocess enligt ovan, så kan tjänsten skicka en enkel begäran till valideringstjänsten, som returnerar filtrerade och validerade data för begärd tjänst i kontexten av valt *tillitsankare*. Detta innebär:
-	*Metadata* valideras och filtreras genom federationskontextens metadatapolicy.
-	Validering av *tillitsmärken*.

<a name="federationskontext"/>

## Federationskontext
Federationskontext är de regler som gäller när en federationsansluten tjänst (*entitet*) valideras genom ett specifikt *tillitsankare*. Dessa regler specificeras för varje koppling mellan ett *tillitsankare* och varje underställd förbindelsepunkt (*intermediär entitet*). Reglerna uttrycks i ett aktörsintyg (*entity statement*) för varje förbindelsepunkt. Ett *tillitsankare* specificerar i varje utfärdat aktörsintyg de begränsningar som gäller för en förbindelsepunkt. Sådana begränsningar kan gälla vilka typer av digitala tjänster som får registreras samt vilka krav som måste ställas på registrerade tjänsters *metadata*. Två viktiga begränsningar som kan specificeras är:
1. Metadatapolicy
2. Utfärdande av *tillitsmärken*

<a name="metadatapolicy"/>

### Metadatapolicy
En metadatapolicy är en uppsättning regler som styr innehåller i *metadata* för en federationsansluten tjänst (*entitet*), vars uppgifter finns registrerade under en förbindelsepunkt (*intermediär entitet*). Varje förbindelsepunkt kan sedan ytterligare begränsa denna metadatapolicy för sina underordnade förbindelsepunkter.

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
    tjänsts *metadata* valideras i denna federationskontext kommer endast de metadatavärden som stöds av 
    definierad policy att returneras, även om tjänsten har deklarerat stöd för andra alternativ.</dd>
</dl>

----------------------


Om en valideringskedja innehåller flera metadatapolicyer så måste samtliga dessa policyer vara uppfyllda för att tjänstens *metadata* skall valideras som giltig.

Genom att olika *tillitsankare* kan tillämpa olika metadatapolicyer för samma federationsanslutna tjänst (*entitet*) via olika intermediära förbindelsepunkter, kan samma tjänst representeras av olika *metadata* beroende på vilket *tillitsankare* och vilken metadatapolicy som ska användas.

<a name="utfardatm"/>

### Utfärdande av tillitsmärken
Godkända utfärdare av *tillitsmärken* inkluderas i tillitsankarets aktörsintyg (*entity statement*). Dessa redogörs i en lista över godkända utfärdare med specifikation om vilka *tillitsmärken* dessa är auktoriserade för att utfärda inom ramen för en federationskontext. På detta sätt kan ett *tillitsankare* styra vilka *tillitsmärken* som är godtagbara och vem som får utfärda dem.

OIDF skiljer mellan <mark>*ägare av tillitsmärke*</mark> och <mark>*utfärdare av tillitsmärke*</mark>. En ägare är den aktör som har rätten att bestämma reglerna för att part ska få erhålla ett *tillitsmärke* samt fastställer vem som har rätt att utfärda dessa. *Ägare av tillitsmärke* kan själv agera utfärdare, men kan även också delegera utfärdandet till en annan aktör. 

Vid validering av tillitsmärken kontrolleras även att utfärdaren är auktoriserad att utfärda *tillitsmärket* samt att *tillitsmärket* inte har blivit spärrat av dess ägare.

<a name="registrering"/>

## Registrering
Idén med en distribuerad registreringsmodell möjliggör att ansvaret för registrering av federationsanslutna tjänster (*entiter*) kan fördelas och delegeras till flera federationsoperatörer (*tillitsankare*) och deras underställda intermediära förbindelsepunkter. Strukturen hanteras genom en övergripande federationspolicy som reglerar federationsoperatörens roll samt ställer krav på anslutningsprocesser för varje intermediär förbindelsepunkts rätt att registrera tjänster (entiteter).

<a name="upprattaie"/>

### Att upprätta en intermediär förbindelsepunkt
En intermediär förbindelsepunkt ansvarar främst för att säkerställa identiteten för en federationsansluten tjänst (*entitet*). Registreringsprocessen inkluderar även att verifiera vilken organisation som tillhandahåller tjänsten, vem som är ansvarig för den och att all data som publiceras om tjänsten har godkänts av den ansvariga organisationen.

En intermediär förbindelsepunkts uppgift handlar i mindre grad om att på enskild basis kontrollera eller godkänna vilka data som en registrerad tjänst (entitet) publicerar om sig själva. Skälet till detta är framför allt att:
1. En intermediär förbindelsepunkt behöver inte reglera eller kontrollera information om uppfyllnad av regelverk eller kravmassa, då dessa hanteras separat av *tillitsmärken*.
2. Istället för att kontrollera *metadata* på enskild basis kan en intermediär förbindelsepunkt upprätta en generell policy som reglerar publicerade data för alla registrerade tjänster (*entiteter*).

Detta gör det betydligt lättare för ett *tillitsankare* som då mycket enklare kan ansluta grupper av tjänster (*entiteter*) i stället för att hantera varje tjänst separat.

Sammantaget lämpar sig en intermediär förbindelsepunkt mycket väl för anslutning av organisationer som har en naturligt nära relation med registrerade tjänster (*entiteter*). Till exempel kan en naturligt lämplig intermediär förbindelsepunkt vara ett universitet som ansvarar för registreringen av universitets egna tjänster (*entiteter*). Denna förbindelsepunkt kan sedan vara underordnad tillitsankaret genom en nationell förbindelsepunkt för alla universitet och högskolor i Sverige.

<a name="entitetsregistrering"/>

### Att registrera en tjänst
En framgångsfaktor för OIDF är att standarden förenklar anslutningsprocessen för federationsanslutna tjänster (*entiteter*) utan stora ingrepp i befintlig infrastruktur. Intermediära förbindelsepunkter kan därför en ha viktig roll i att erbjuda varianter av registrering som kan möta olika behov. Två metoder för som bör vara viktiga att stödja är: 
1. Egen publicering av *metadata*
2. Delegerad publicering av *metadata*

<dl>
  <dt>Egen publicering av *metadata*</dt>
  <dd>Denna metod är typisk för registrering av federationsanslutna tjänster. Enligt denna modell bestämmer 
      tjänsten en URL kopplad till sitt ID för publicering av data om tjänsten. Denna URL ska uppfylla 
      OIDF-kraven, så att alla som känner till tjänstens ID även kan hitta dess publicerade data.
      Den federationsanslutna tjänsten ansvarar själv för att skapa och signera de data som den avser att 
      publicera om sig själv. <br /><br />Den stora fördelen med denna strategi är att den registrerade 
      tjänsten har stor kontroll över hur den representeras i federationen, så länge den följer de 
      fastställda reglerna. Den intermediära förbindelsepunkten behåller kontrollen över vad tjänsten får 
      publicera om sig själv genom den metadatapolicy som upprättas för tjänsten.</dd>
  <dt>Delegerad publicering av *metadata*</dt>
  <dd>En betydligt enklare lösning för en tjänsteproducent är att ansluta en intermediär förbindelsepunkt 
      som erbjuder stöd för att skapa, signera och publicera *metadata* om den federationsanslutna tjänsten. 
      Detta kan vara ett mycket attraktivt erbjudande till de tjänsteproducent som inte har egen förmåga 
      att skapa, signera och publicera data enligt kraven i OIDF. <br /><br />Det finns många möjligheter att 
      utforma registreringsprocessen mellan federationsansluten tjänst och den intermediära 
      förbindelsepunkten &ndash; inte minst avseende existerande tjänster, som inte har eget stöd för OIDF, 
      men som behöver på ett smidigt sätt anslutas till en eller flera federationskontexter.</dd>
</dl>

<a name="generell"/>

## Möjlighet till en generell lösning
OIDF är i första hand en standard för OpenID Connect- och OAuth-tjänster. ODIF är dock en öppen standard där man fritt kan specificera stöd för valfri typ av infrastruktur med helt egen metadataprofil. Detta innebär att om man bara skapar en lämplig metadataprofil för att exempelvis specificera SAML-metadataparametrar, skulle man även kunna hantera registrering av SAML-baserade tjänster inom ramen för OIDF.

<a name="saml-oidf"/>

### SAML-metadata via OIDF
Att hantera registrering av SAML-metadata via OIDF skapar förutsättningar för att ha en gemensam digital infrastruktur för administration och registrering av federationsanslutna tjänster oberoende avsett vilket protokoll dessa använder. Samma federationsansluten tjänst (*entitet*) skulle kunna registrera både OpenID Connect-metadata och SAML-metadata till samma intermediär förbindelsepunkt. Detta skulle kunna innebära stora fördelar både för federationsoperatörer, tjänsteproducenter och tjänstekonsumenter.

För att möjliggöra registrering och distribution av SAML-metadata via OIDF behöver följande göras:
- Definiera en profil för hur man kan uttrycka SAML-metadata i ett dataformat som kan hanteras av OIDF.
- Definiera metoder för att på bästa sätt uttrycka *tillitsmärken* genom SAML-metadata och metadataströmmar.
- Registrera federationsanslutna tjänster (entiteter) enligt denna nya datamodell (*metadata* och *tillitsmärke*)
- Skapa en metadatatjänst som kan publicera efterfrågade SAML-metadataströmmar baserat på registreringar inom ramen för OIDF.

<a name="usecase"/>

## Exempel på användningsfall
Detta avsnitt presenterar ett antal användningsfall som beskrivs ur följande tre perspektiv:
1. Nuvarande situation utan OIDF, det vill säga hur gör vi idag?
2. Registrering med stöd av OIDF, det vill säga hur registrera federationsanslutna tjänster enligt OIDF?
3. Tjänsteflöde med OIDF, det vill säga hur kan tjänsten registrerad enligt OIDF tänkas fungera?

<a name="op"/>

### Leverans av identitetsintygstjänst med OpenID Connect
Detta användningsfall beskriver hur försörjning av e-legitimering kan utföras med hjälp av en *legitimeringstjänst* som tillämpar *OpenID Connect*. Intygsutfärdandet görs genom en *identitetsintygstjänst*, som inom *OpenID Connect* benämns *OpenID Provider (OP)*. Förlitande part som tillhandahåller e-tjänsten beställer e-legitimering för den person som vill använda e-tjänsten. Efter att personen har identifierat sig med sin e-legitimation och personens identitet har veriferats, utfärdar *legitimeringstjänsten* ett signerat identitetsintyg till förlitande part.  

En typisk funktion för en *OP* är att finnas tillförfogande för flera e-tjänster i en federation. Registrering och underhåll av *metadata* om e-tjänsterna blir dock en betungande administrativ börda när antalet e-tjänster ökar. Detta är särskilt fallet när interoperabilitet och användning av *legitimeringstjänsten* regleras genom avtal och är förknippat med ersättning för varje e-legitimeringstransaktion.

#### Nuvarande situation
Idag har *OP* själv ansvaret för att reglera och administrera anslutning av e-tjänster. Detta sker ofta med processer som till övervägande del är beroende av manuella kontroller och manuell registrering.

Det finns idag standarder för automatisk registrering av *metadata*, men dessa procedurer är väldigt begränsade vad gäller möjligheten att säkerställa ursprung och ansvar för de tjänster som registreras.

#### Registrering med OIDF
En *OP* är en kritisk tjänst i federationen och därför är det rimligt att begränsa registrering av sådana tjänster till någon eller några betrodda operatörer särskilt lämpade för uppgiften. Det som framförallt behöver säkerställas är att organisationen som tillhandhåller *legitimeringstjänsten* och dess ansvariga företrädare autentiseras tillsammans med de nycklar som används för att tillhandahålla data och nycklar för *legitimeringstjänsten*.

*Federationsoperatören* behöver däremot inte hantera specifika frågor om *legitimeringstjänstens* uppfyllnad om diverse krav, såsom tekniska-, administrativa-, juridiska- eller krav om certifiering. Dessa hanteras av *tillitsmärken*.

En *OP* som ska anslutas till federationen behöver således utföra följande steg:
1.	Registrering hos *federationsoperatör* eller underliggande intermediär förbindelsepunkt, kopplade till relevanta *tillitsankare*.
2.	Genomgång kontroller och granskning utifrån krav för att erhålla nödvändiga *tillitsmärken* från lämpliga *utfärdare av tillitsmärken*.
3.	Publicering av *metadata*.

Här kan en *OP* välja olika metoder för att publicera sitt *metadata*, men ett rimligt antagande är att varje *OP* kommer att  publicera sitt eget *metadata*.

#### Tjänsteflöde med OIDF
En *OP* kan kommunicera och tillhandahålla e-legitimering till alla förlitande parter som har federationsanslutna tjänster (*entiteter*) i OIDF, utan behov av ytterligare manuella processer. Hanteringen av en förlitande parts begäran om e-legitimering med stöd av OIDF sker enligt följande steg:
1. *OP* tar emot en begäran om e-legitimering (*request*) från en förlitande part.
2. *OP* kontaktar en *valideringstjänst* och begär ut validerade *metadata* och *tillitsmärken* för den förlitande partens tjänst (*entitet*) och gällande federationskontext.
3. *OP* verifierar att förlitande part innehar nödvändiga *tillitsmärken* för att vara behörig att begära e-legitimering.
4. *OP* använder de validerade *metadata* för att tillhandahålla *identitetsintyg* till förlitande part.

Det är *OP* som bestämmer federationskontext samt vilka *tillitsmärken* som krävs för att begära e-legitimeringen. Ett sådant *tillitsmärke* kan mycket väl vara utfärdat av *OP* själv till de aktörer som *legitimeringstjänsten* har avtal med.

Om validerade *tillitsmärken* och *metadata* inte är kompatibla med den begärda tjänsten, avvisas begäran med en lämplig felkod.

<a name="rp"/>

### Agera förlitande part med OpenID Connect
Detta användningsfall beskriver hur förlitande part kan beställa e-legitimering i en e-tjänst som tillämpar *OpenID Connect*. En e-tjänst kan vara förlitande part i flera federationskontexter samtidigt. Ett exempel på detta skulle kunna vara om en sjukvårdssystem har inloggning för både förskrivande läkare via SITHS och för patienter med e-legitimationer som *BankID* eller *Freja eID+*.

I detta användningsfall antar vi att samtliga legitimeringstjänster är *OP* enligt *OpenID Connect*.

#### Nuvarande situation
Som det beskrivs i föregående användningsfall är registrering av en federationsansluten tjänst förknippat med processer som till övervägande del är beroende av manuella kontroller och manuell registrering.

Förlitande part måste göra sin registrering individuellt hos varje *OP*. Idag saknas möjligheter för en förlitande part som tillämpar *OpenID Connect* att registrera sig hos en central tjänst för åtkomst till federationens alla (enligt ingångna avtal) OP-tjänster.

#### Registrering med OIDF
OIDF möjliggör effektiv delegering till intermediära förbindelsepunkter, som har en naturligt nära koppling till de registrerade federationsanslutna tjänsterna. Dessa kan därmed erbjuda anpassade tjänster som på ett naturligt sätt möter tjänsteproducenternas kapacitet och behov. Se även tidigare resonemang kring [registrering av tjänst genom egen publicering eller delegerad publicering av metadata](#entitetsregistrering).

Den viktiga skillnaden mellan egen och delegerad publicering av *metadata* är att den enklaste formen av delegerad publicering innebär att förlitande parts tjänst endast kan lokaliseras via en kompatibel *valideringstjänst*. Detta är inget problem så länge alla *OP* som förlitande part är beroende av, använder en kompatibel *valideringstjänst* för att hämta och validera data om tjänsten från förlitande part. Men, om förlitande part önskar att använda en *OP* som inte tillämpar en kompatibel *valideringstjänst*, då behöver förlitande part välja en annan publiceringsstrategi.

#### Tjänsteflöde med OIDF
Beroende på vilken typ av användare som loggar in väljs *OP* och lämplig federationskontext. Vald federationskontext bestämmer vilket *tillitsankare* och vilken *valideringstjänst* som används för att hämta och verifiera data om vald *OP*.

När användaren har valt legitimeringstjänst sker e-legitimering med stöd av OIDF enligt följande:
1.	Förlitande part hämtar validerade *metadata* och *tillitsmärken* för vald OP via lämplig valideringstjänst.
2.	Förlitande part verifierar att *OP* innehar nödvändiga *tillitsmärken*.
3.	Förlitande part använder validerad *metadata* om *OP* för att skicka en begäran om identitetskontroll.

*Tillitsmärken* som lämpligen bör kontrolleras av en förlitande part är sådana *tillitsmärken* som intygar att *OP* är auktoriserad att ge ut identitetsintyg på den tillitsnivå som efterfrågas i enlighet med lämplig teknisk profil.

<a name="samlservice"/>

### Tillämpa OIDF för SAML på traditionellt vis
Idag saknas kompletta specifikationer för att registrera SAML-tjänster i OIDF. Detta användningsfall redogör för vad som skulle vara möjligt om stöd för SAML skapas i enlighet med diskussionen i avsnitt [SAML-metadata via OIDF](#saml-oidf).

#### Nuvarande situation
I dag behöver varje organisation leverera SAML-metadata för varje federationsansluten tjänst (entitet) till federationsoperatören. Detta inkluderar både konfigurationsdata och sådana uppgifter som i OIDF regleras med *tillitsmärken*. Registrering av data för SAML-tjänster innebär därför också insamling av data som granskning av tjänstens rättigheter och uppfyllnad av väsentliga krav.

Kontroll av teknisk uppfyllnad är i allt väsentligt statisk och utförs i regel innan *metadata* accepteras för publicering. Ändring av regler för hur *metadata* utformas innebär ofta ändringar i de tjänster som används för att kontrollera och verifiera *metadata*.

Samtliga parter hämtar *metadata* från federationsoperatörens metadatatjänst och ansvarar själva för att tolka och validera inhämtade *metadata* i relation till den tjänst/de tjänster som man önskar kommunicera med.

#### Registrering med OIDF
Om SAML-metadata skulle registreras i OIDF krävs en uppdelning mellan deklaration av kravuppfyllnad som hanteras av *tillitsmärken* och rena konfigurationsdata, vilka hanteras som *metadata*.

Detta innebär att man kan delegera såväl registrering av *metadata* och utfärdande av *tillitsmärke* på samma sätt som om tjänsten använde *OpenID Connect*. Detta skulle kunna innebära stora administrativa förbättringar. Särskilt om man skapar en miljö där det finns ett val mellan SAML och *OpenID Connect*. En möjlighet som federationsoperatörer kan erbjuda är tjänster för anpassade metadataströmmar som konfigureras utifrån *tillitsmärken*.

#### Tjänsteflöde med OIDF
Vid införande av stöd för SAML i OIDF krävs upprättande av en traditionell SAML-metadatatjänst, som kan användas av SAML-tjänster för att konsumera *metadata* utan krav på modifiering av SAML-mjukvara. Detta innebär att integrationer ska fungera som vanligt för inblandade tjänster även efter övergången till OIDF.

Skillnaden är endast hur data lagras om olika tjänster i det bakomliggande registreringssystemet och hur SAML-metadata produceras av federationsoperatören.

<br /><br />

[^1]: [Specifikation: OpenID Federation 1.0](https://openid.net/specs/openid-federation-1_0.html) 
