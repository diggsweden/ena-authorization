# Målarkitektur för en Svensk identitets- och åtkomsthantering

## Inledning
För en tillitsfull och kostnadseffektiv samverkan inom offentlig förvaltning behöver vi utveckla och förankra nationell arkitektur, infrastruktur och tillämpningsanvisningar för identitets- och åtkomsthantering. Denna målarkitektur syftar till att ge en bild över hur ett sådant åtkomstsystem kan och bör utformas för att möjliggöra en tids- och kostnadseffektiv digitalisering av svensk offentlig sektor.

```mermaid
graph TD
classDef org fill:#D2B9D5

subgraph actors[Aktörer]
direction LR     
 k(Kommuner):::org~~~
 r(Regioner):::org~~~
 m(Myndigheter):::org~~~
 p(Privata aktörer):::org
end

subgraph abilities[Förmågor]
 Å(Åtkomsthantering)
 I(Identitetshantering)
 B(Behörighetshantering)
 T(Tillitshantering)
end

actors--har behov av-->abilities
Å--kräver-->I & B--kräver-->T
```
*Logisk bild över hur områdena tillitshantering, identitetshantering och behörighetshantering ger förutsättningar för åtkomsthantering i digitala tjänster*


### Bakgrund och syfte 
Inom alla dessa områden finns det redan idag olika grad av standardisering. Det används dock olika standarder inom olika verksamhetsområden och detta leder till att parter som behöver samverka inom flera av dessa verksamhetsområden behöver investera i att stödja många standarder parallellt. Med ett gemensamt system för att hantera digitala identiteter och åtkomstbeslut kan samverkan mellan aktörer verksamma inom svensk offentlig förvaltning underlättas avsevärt. Systemet behöver stödja såväl offentliga organisationer som privata utförare av offentliga uppdrag.

Målarkitekturen kommer även omfatta en enklare strategisk plan för vilka förflyttningar som behöver genomföras över tid och beroenden dem emellan. Denna strategiska plan behöver förhålla sig till existerande arkitektur och infrastrur, samt redan gjorda investeringar i digitaliseringstillämpningar. Planen bör även innehålla vägledning för om. när och hur existerande digitala tjänster ska migrera över till det nya åtkomstsystemets samverkansmönster och nyttja ny infrastruktur.

Målarkitekturen är tänkt att fungera som underlag för diskussioner inom svensk offentlig förvaltning och nå samsyn kring hur ett framtida nationellt IAM-system kan och bör utformas. Ett IAM-system behöver innehålla följande:
- Federation för organisatorisk tillit
- Identitetsfederation för fysiska användare
- Identitetsfederation för systemaktörer
- Överenskommelser om modell och kodverk för behörighetsstyrande information
- Överenskomna tekniska standarder och samverkansmönster för hantering av identifiering och åtkomstbeslut

De i IAM-systemet ingående federationerna syftar till att möjliggöra effektiv digitalisering av organisationsöverskridande processer genom att erbjuda mönster för hur identiter och åtkomstbeslut kan hanteras. 

### Terminologi (input till Aras!)
<table bgcolor="lightblue" border=1><tr><td>
Jag har i mina arkitekturskisser nedan använt termer från T2, men beskrivningarna har förenklats något för detta kontext. Terminologin genomgår en första revidering under 2024. Rekommendationen är att vi använder nuvarande termer tills revideringen är klar.
<br>
<br><a href="https://inera.atlassian.net/wiki/spaces/OITIFV">T2 - referensarkitektur för interoperabilitet inom svensk välfärd</a>
<br><a href="https://inera.atlassian.net/wiki/spaces/OITAFIIVOO">T2 - referensarkitektur för interoperabilitet inom svensk vård och omsorg</a>
</td></tr></table>


## Övergripande Arkitektur
<table bgcolor="lightblue" border=1><tr><td>
Det finns ett förslag på en ny EU-förordning, <a href="https://commission.europa.eu/system/files/2022-11/com2022720_0.pdf">Interoperabilitetsförordningen</a>, vilken tar avstamp i European Interoperability Framwork (EIF) och reglerar hur man säkerställer att digitala tjänster som tas fram inom EU linjerar mot EIF.
<br/>
<br/>
I december 2023 överlämnades ett betänkande <a href="https://www.regeringen.se/rattsliga-dokument/statens-offentliga-utredningar/2023/12/sou-202396/">En reform för datadelning (SOU 2023:96)</a> till regeringen. Denna utreder Interoperabilitetsförordningen utifrån ett Svenskt kontext.
</td></tr></table>


### Grundläggande arkitektoniska principer
[Svenskt ramverk för digital samverkan (Digg)](https://www.digg.se/kunskap-och-stod/svenskt-ramverk-for-digital-samverkan) är en svensk anpassning av det europeiska ramverket för interoperabilitet (EIF). Det innehåller principer för digtalisering, samt rekommendationer för hur dessa principer tillämpas. För IAM-området kan vi komma att behöva ta fram specifika rekommendationer. 

Vi kompletterar det svenska ramverket med ett antal konkreta rekommendationer för etableringen av IAM-systemet - nedan insorterade under ramverkets grundprinciper

1. Samverka som förstahandsval
2. Arbeta aktivt med juridiken
    - Ett nationellt IAM-system måste ha utrymme för privata aktörer att bidra till svensk offentlig förvaltnings digitala ekosystem, såväl som utförare av offentligt finansierad verksamhet, leverantörer av IAM-funktionalitet, eller agenter för andra sådana offentliga eller privata aktörer.
    - Då dagens IAM-system tvingar fram bedrägliga betteenden i och med att systemet ej är utformat för att vara tillgängligt för alla invånare, bör man i design av ett nytt IAM-system lyfta behov av utökat legalt stöd för att söka hjälp utan att begå avtals- och lagbrott. Tillse redan nu att en framtida förenklad hantering av ombud via fullmakt eller annan ställföretraädarroll inte försvåras.
3. Öppna upp
4. Skapa transparens till den interna hanteringen
5. Återanvänd från andra
    - Bygg IAM-systemet på brett förankrade standarder och <i>best practices</i>. Delta i standardiseringsprocesser hellre än att profilera befintliga standarder. Profilera hellre befintliga standarder än att hitta på egna.
6. Se till att information och data kan överföras
    - Bygg vidare på existerande kodverk för behörighetsstyrande attribut och försök förankra attributmappningar mellan existerande och nya kodverk. Över tid kan man främja en linjering gentemot en standard, men genom att respektera gjorda investeringar främjas en ökad digitaliseringstakt och dessutom ett ansvarsfullt nyttjande av skattemedel.
7. Sätt användaren i centrum
8. Gör digitala tjänster tillgängliga och inkluderande
    - Sök att i designbeslut på alla nivåer beakta problematiken med digitalt utanförskap genom att skapa förutsättningar för tillämpningar med hög tillgänglighet enligt [Lag (2018:1937) om tillgänglighet till digital offentlig service](https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/lag-20181937-om-tillganglighet-till-digital_sfs-2018-1937/) och [Kognitiv tillgänglighet – Del 1: Allmänna riktlinjer (ISO 21801-1:2020, IDT)](https://www.sis.se/produkter/halso-och-sjukvard/hjalpmedel-for-personer-med-funktionsnedsattning/hjalpmedel-for-personer-med-funktionsnedsattningar/ss-en-iso-21801-120212/)
9. Gör det säkert
    - Beakta säkerheten avseende alla nivåer. Teknisk säkerhet i IAM-systemet i sig. Hög tillgänglighet avseende robusthet i systemets ingående komponenter. Hög tillgänglighet avseende användarinteraktioner med systemet. Säkerhetsmekanismer på adekvat nivå för att skydda respektive komponent och den information som behandlas av denne.
10. Hitta rätt balans för den personliga integriteten
11. Använd ett språk som användarna förstår
12. Gör administrationen enkel
    - Skapa ett IAM-system, med huvudsakligen en anslutningsprocess per anslutande part. Låt anslutningar till specifika verksamhetstillämpningar bygga på genomförd anslutning till IAM-systemet för att därmed minimera den administrativa bördan.
13. Ha helhetssyn på informationshantering

### IAM-system - Organisatorisk vy

```mermaid
graph TD
classDef org fill:#D2B9D5

subgraph s[<p>]
    k(Tjänstekonsument):::org
    p(Tjänsteproducent):::org
    fio(Federationsoperatör):::org-->fi(Federation för <br>informationsutbyte)
    k==>fi==>p
end

subgraph f[<p>]
    fto(Federationsoperatör):::org
    fibo(Federationsoperatör):::org
    fto-->ft(Federation för<br>organisationstillit)
    fibo-->fib(Federation för <br>identitet och behörighet)

end

f--skapar förutsättningar för-->s

```
*Logisk bild över hur centrala förmågor för hantering av organisationstillit, samt identiteter och behörigheter skapar förutsättningar för samverkan*

| Begrepp | Beskrivning 
|:-|:-
| Tjänstekonsument | Organisation som har behov  av att nyttja en digital tjänst (Public Service Consumer från EIRA) 
| Tjänsteproducent | Organisation som erbjuder en digital tjänst till andra tjänstekonsumenter (Public Service Producer från EIRA) 
| Federationsoperatör | Den aktör som styr och koordinerar en federation, dess medlemmar, avtal, samt regler och villkor.
| Federation för informationsutbyte | Ett antal aktörer som i avtalad samverkan delar information i ett gemensamt syfte med hjälp av gemensamt definierade regler för informationsutbytet både avseende teknik, semantik, legala tolkningar, samt organisatoriska regler och policyer.  
| Informationsfederation | Synonym till *federation för informationsutbyte* |
| Federation för identitet och behörighet | Ett antal aktörer som i avtalad samverkan delat information kring identieter och behörighetsgrundande information med hjälp av gemensamt definierade regler avseende teknik, semantik, legala tolkningar, samt organisatoriska regler och policyer.
| Federation för organisationstillit |  Ett antal aktörer som avtalad samverkan som realiserar tillitsskapande förmågor inom informationssäkerhetsområdet i hela eller delar av sin organisation. De tillitsskapande förmågorna behöver uppfylla de inom federationen fastställda kraven. 


### IAM-system - Teknisk vy

Den tekniska vyn syftar till att beskriva tekniska begrepp som behövs inom ovan beskrivna federationer för att realisera samverkan

```mermaid
graph TB
subgraph fo[Federation för organisationstillit]
    oi(Organisationsidentifierare)
    ot(Organisationstyp)
    vi(Verksamhetsidentifierare)
    vt(Verksamhetstyp)
    kk(Kravkatalog)
    kp(Kravprofil)
    lot(LoT-nivå)

    oi~~~vi~~~kk
    ot~~~vt~~~kp
end

subgraph fib[Federation för identitet och behörighet]
    direction LR
    fa(fysiska aktörers identiteter)
    sa(systemaktörers identiteter)
    loa(LoA-nivåer)
    ar(aktörsroller) 
    ba(behörighetsgrundande attribut)
    fr(företrädarrelationer)
    tip(tekniska integrationsprofiler)

    fa~~~sa~~~loa
    ar~~~ba~~~fr
end

subgraph fi[Federation för informationsutbyte]
    direction LR
    is(informationsspecifikation)
    ints(interoperabilitetsspecifikation)
    as(api-specifikationer)
    ap(åtkomstpolicyer)
    k(kodverk)

    is~~~ints~~~as
    k~~~ap

end

fo ~~~ fib ~~~ fi

```




## Behovsanalys/Typfall
När parter etablerar samverkan via en digital tjänst finns det ett antal olika scenarion.
### Användare anropar extern tjänst, med förprovisionerade användarkonto
```mermaid
graph LR
TBD
```
### Användare anropar extern tjänst

#### Nuläge

```mermaid
graph LR
classDef Amber color:#000000,fill:#FFDEAD
classDef Green color:#000000,fill:#FF5555
classDef orange color:#000000,fill:#f96
A{{Användare<br>Handläggare<br>Kommun}}:::Amber
B([E-tjänst<br>Finansiell status<br>FK]):::orange
C{{Administratör<br>Kommun}}:::Amber
D[(extern e-tjänst)]:::Green
E[(20 e-tjänster)]:::Green
subgraph Typfall Finansiell status
A -->|Loggar in i extern e-tjänst<br> med e-legitimation | B
C -->|Administrerar kommunens användare | B
end
subgraph Fler typfall
C --> D
C --> E
end
```

##### Förutsättningar
1. Kommunadministratör kontaktar FK om att få administratörsrättigheter i e-tjänst
2. Kommun fyller i blankett(er)
3. Kommun kompletterar med kopior av beslut
4. Kommun kompletterar med andra uppgifter
5. FK skickar brev till kommun
6. Kommun svarar via fax/brev, med administratörens uppgifter
7. Kommun väntar på lång handläggningstid
8. FK kontaktar kommun om kompletteringar
9. Administratör godkänns, läggs upp i e-tjänst
10. Administratör ansöker om e-tjänstekort (EFOS)
11. Administratör får e-tjänstekort och kan börja administrera kommunens handläggare i e-tjänst
12. Upprepas vid varje extern tjänst eller vid byte av administratör
13. (<i>I flera fall finns ingen kommunadministratör, ersätt då ovanstånde att gälla för alla enskilda användare.</i>)


#### Börläge
*Lite förenklad bild med komponenter per aktör, utan varje interaktion* - Pelle väljer!

```mermaid
graph TD

subgraph x[Kommun X]
    xu(Handläggare kommun X<br>&lt&lt Medarbetare &gt&gt)
    xidp(IdP kommun X<br> &lt&lt Legitimeringstjänst IdP&gt&gt)
    xuv(&lt&lt Uppdragsväljare &gt&gt)
    xak[(Personalsystem<br> &lt&lt Attributkälla &gt&gt)]
end

subgraph k[Kronofogden]
    kd[(Informationskälla<br> &lt&lt Attributkälla &gt&gt)]
end

subgraph b[Bolagsverket]
    bd[(Informationskälla<br> &lt&lt Attributkälla &gt&gt)]
end

subgraph fk[Försäkringskassan]
    fkt(Finansiell status<br>&lt&lt E-tjänst &gt&gt)
    fka(&lt&lt Anvisningstjänst &gt&gt)
end

subgraph id[Identitetsutfärdare]
    ida(Autentiseringstjänst)
end

subgraph fed[Federation]
    fedt[tillitsmetadata]
    fedmk(federationsmedlemskatalog)
    fedprof(tjänstemetadata<br>per teknik)
end

id & fk & x & k -.-> fed
id--ger ut identiteter-->x
x--anropar tjänst-->fk
fk--ber om legitimering<br>av användare-->x
fk--hämtar behörighetsgrundande<br>information-->k & b
```

```mermaid
graph TD

subgraph x[Kommun X]
    xu(Handläggare kommun X<br>&lt&lt Medarbetare &gt&gt)
    xuv(&lt&lt Uppdragsväljare &gt&gt)
    xidp(IdP kommun X<br> &lt&lt Legitimeringstjänst IdP&gt&gt)
    xak[(Personalsystem<br> &lt&lt Attributkälla &gt&gt)]
end

subgraph k[Kronofogden]
    kd[(Informationskälla<br> &lt&lt Attributkälla &gt&gt)]
end

subgraph b[Bolagsverket]
    bd[(Informationskälla<br> &lt&lt Attributkälla &gt&gt)]
end

subgraph fk[Försäkringskassan]
    fkt(Finansiell status<br>&lt&lt E-tjänst &gt&gt)
    fka(&lt&lt Anvisningstjänst &gt&gt)
end

subgraph id[Identitetsutfärdare]
    ida(Autentiseringstjänst)
end

subgraph fed[Federation]
    fedt[tillitsmetadata]
    fedmk(federationsmedlemskatalog)
    fedprof(tjänstemetadata<br>per teknik)
end

%%x~~~~~fk

id-.->fed
fk & x & k -.-> fedmk
xak & xidp & fkt & kd -.->fedt

id--1 ge ut digital identitet-->xu
xu--2 anropa tjänst-->fkt
xu--3 välj IdP-->fka
fkt-.visa.->fka
xu--4 legitimera-->xidp
xu--5 autentisera-->ida
xidp--6 hämta attribut-->xak
xidp--7 visa uppdragsväljare-->xuv
xidp--8 returnera identitetsintyg<br>och omdirigera användare<br>till tjänsten-->xu
fkt--9 inhämta behörighetsstyrande<br>information---> kd 
fkt--10 inhämta behörighetsstyrande<br>information---> bd 
fkt--11 utför något-->fkt
fkt--12 resultat-->xu
```
##### Förutsättningar
Obligatoriska förutsättningar
- Kommun: Medlem i federationen som organisation
- Kommun: Intygsutfärdartjänst och attributskälla måste vara granskad och godkänd på tillräcklig tillitsnivå av federationen
- Kommun: Användare måste ha en av federationen godkänd e-legitimation, på tillräcklig tillitsnivå
- Kommunens intygsutfärdartjänst: Metadata registreradhos federationsoperatören; nyckelcertifikat, tillitsnivå, et
- Kommunanvändaren: Upplagd i kommunens lokala attributskälla
- Kommunanvändaren: Metadata skickas med i anrop till e-tjänst – pekare till adress till kommunens intygsutfärdartjänst (alternativt används en anvisningstjänst kopplat till e-tjänsten)
- E-tjänst: Dess organisation medlem i federation
- E-tjänst: Medlem i federation som e-tjänst på viss tillitsnivå
- E-tjänst: Metadata registrerad; nyckelcertifikat, krav på tillitsnivå, krav på attribut, etc
- E-tjänst: Uppfyller kraven på server-2-server-kommunikation som federationen anvisar, som konsument av information
- Kronofogden: Medlem i federation
- Kronofogden: Metadata för e-tjänst registrerad hos federationsoperatören, som producent av information
- Kronofogden: Uppfyller kraven på server-2-server-kommunikation som federationen anvisar

Möjliga förutsättningar
- Bolagsverket: Medlem i federation (ej krav pga offentlig tillgänglig information i tjänst)
- Agent/ombud: Granskad och godkänd av federationen att stötta andra organisationer med deras federationsansökan, e-tjänster, intygsutfärdartjänst, attributskälla, e-legitimationer


### System anropar system i annan organisation

```mermaid
graph LR

subgraph po[Tjänsteproducent]
    p(API)
    as(Åtkomsttjänst)
end

subgraph ss[Nationella stödtjänster]
    t(Tillitsregister)
    m(Metadata IAM)
end

subgraph so[Samverkansoperatör]
    tk(Tjänstekatalog)
    ak(Avtalskatalog)
end

subgraph co[Tjänstekonsument]
    c(Klient)
end

c--1. hitta tjänst utifrån <br>interoperabilitetsspecifikationsidentifierare<br>och tjänsteproducents organisationsidentifierare-->tk
c--2. verfiera organisatoriska och legala <br>förutsättningar för samverkan-->ak
c--3. begär åtkomst till API-->as
as--3.1. verfiera organisatoriska och legala <br>förutsättningar för samverkan-->ak
as--3.2 verifiera tillit till Klient-->t
as--3.3 verifiera metadata för klient-->m
c--4. Anropa API-->p
p-.litar på.->as

```


## Federationens Aktörer och Roller
### Identifiera och definiera olika aktörer och deras roller inom identitetsfederationen
### Beskriv specifika ansvarsområden för varje aktör och hur de interagerar med varandra

## Identitets- och behörighetshantering
### Beskrivning av identitets- och behörighetshanteringsprocesser inom federationen(-erna)
### Metoder för autentisering och auktorisation över federativa gränser

## Tekniska Standards och Protokoll

### Specifikation av tekniska standarder och protokoll som används inom federationerna
- SAML (Security Assertion Markup Language)
- OAuth
- OpenID Connect etc.

## Arkitektonisk Design och Komponenter

### Beskrivning av arkitektoniska komponenter och deras funktion inom federationen(-erna)

## Säkerhetsaspekter och Riskhantering

### Identifiera säkerhetsrisker och hantering av dessa inom identitetsfederationen

### Åtgärder för att säkra identitetshantering över federativa gränser

<hr>

# STUFF BELOW IS TO BE SORTED IN ABOVE

<hr>

# Målarkitektur för nationellt åtkomstsystem<br>- med hantering av tillit, identiteter och behörighetgrundande information

## Inledning

### Principer för målarkitekturens utformning


### Syfte



### Avgränsningar

Målarkitekturen kommer ej rekommendera exakt utformning av IAM-systemets komponenter, eller hur ansvar ska fördelas mellan olika aktörer gällande realiseringen.

## Tillitshantering

Vid all samverkan behöver man ha tillit till den part man samverkar med. Det finns idag ett antal tillvägagångssätt för detta som syftar till att både privatpersoner och organisationer ska känna tillit till att information som delas via e-tjänster och APIer inom samhället hanteras på ett korrekt sätt.

Hur skapas denna tillit och hur säkerställs den över tid?

För att kunna samverka över organisationsgränser behövs tillit på två nivåer:

1. Teknisk nivå 
1. Organisatorisk nivå
 
 På teknisk nivå behöver det säkerställas att olika parter utför sin roll i samverkan på ett tekniskt korrekt sätt, enligt överenskomna ramverk, standarder, specifikationer och profileringar.

 På organisatorisk nivå behöver man kravställa att de olika parterna som på något sätt deltar i samverkan har den organisation, de processer, samt den kompetens som krävs för att hålla en god kvalitet i hur de utför sina ansvar. Detta kan till exempel vara att ha ett ledningssystem för informationssäkerhet, samt processer för att säkerställa efterlevnad och kontinuerligt förbättringsarbete. 

Säkerställandet av tillitsskapande förmågor kan behöva ske med olika grad av försäkran beroende på samverkanskontext och skyddskrav för den funktionalitet och information som delas. Kraven som ställs behöver också kunna skilja sig mellan olika typer av aktörer.

Teknisk efterlevnad säkerställas genom testning eller. Organistorisk efterlevnad säkerställs genom lagstiftning, avtal och/eller certifiering. 

Inom cyber- och informationssäkerhetsområdena ser man ökande risker, vilket ställer kontinuerligt högre krav på tillit. Speciellt offentliga aktörer förväntas stärka sina tillitsskapande förmågor då fokus är stort på att realisera samhällsnyttor genom digitalisering och nyttjande av de möjligheter som digitalisering ger förutsätter tillit. 

### Nuläge
Vilka tillitsskapande förmågor som krävs och hur dessa styrks regleras ofta i avtal bilateralt mellan samverkande parter eller via en federationsoperatör.

Tillit är typiskt antingen grundmurad eller avtalsbaserad. Tillitsskapande förmågor styrks ofta genom självdeklaration, ibland byggd på internrevision. Ibland krävs dock revision av extern part, eller till och med certifiering utförd av ackrediterad part.

 - Svenska myndigheter har lagstadgad organisationstillit mellan varandra.
 - Sveriges regioner och kommuner tillämpar avtalsbaserad organisationstillit, styrkt via självdeklaration för samverkan som sker via Inera.
 - ...

### Vision
För att möjliggöra kostnadseffektiv digitalisering av Svensk offentlig förvaltning bör bygga upp ett system där bilaterala avtal inte behöver reglera tilliten utan att detta styrs nationellt via en tillitsfederation.

En tillitsfederation bör definiera vilka krav som ska gälle för respektive typ av aktörs, graderat i olika tillitsnivåer.


```mermaid
flowchart TD

subgraph AO[Tjänstekonsument]
    A(API-konsumerande system)
end

subgraph BO[Tjänsteproducent]
    B-AS(Auktorisationstjänst)
    BW(E-tjänst)
    B(API)
end

subgraph TO[Sweden Trust - tillitsfederation]
    T(Metadataregister)
end

subgraph TM[Tillitsgranskare X]
    Q(Tillitsmärkesgranskning)
end

TM--granskar-->AO & BO
TM--registrerar tillitsmärke-->TO
AO & BO --säkerställer att \ntillitsmärkning finns-->TO
AO==samverkar med etablerad tillit==>BO
```
*Schematisk bild över hur tillit mellan samverkande parter kan regleras via en tillitsfederation*

Det behöver finnas utrymme för många olika typer av kvalitetsmärken för de olika roller en aktör kan inneha samt kanske även olika tillitsmärken för olika tillitsnivåer som krävs beroende på samverkanskontextet.

<table border=1 bgcolor="lightblue"><tr><td>
Tillitsmärken för olika nivåer av organisatorisk tillit skulle kunna användas och namnges LoT1, LoT2, LoT3 och LoT4 (<i>"Level of trust"</i>).  
Att en organisation tilldelats ett kvalitetsmärke för en högre LoT-nivå skulle då kunna innebära att organisationen granskats mot högre krav avseende dess tillitsskapande förmågor./td></tr></table> 

Att en aktör tilldelats ett visst LoT-tillitsmärke skulle kunna ingå som del i kvalificering för en avtalsskrining, eller som åtkomststyrande attribut för åtkomstbeslut vid ett faktiskt tjänsteanrop.

## Identitetshantering

### Nuläge
För privatepersoner har Digg ansvar för kvalitetsmärket Svensk e-legitimation. Detta möjliggör olika aktörer att erbjuda digitala identiteter till privatpersoner förutsatt att de kvalitetssäkrats av Digg. Idag erbjuder BankId, Freja och Svenska Pass denna typ av e-legitimationer.

För medarbetare med behov av att legitimera sig digitalt inom sitt tjänsteutövande har Digg idag ett liknande kvalitetsmärke för utgivning av e-tjänstelegitimationer. Här har Freja och EFOS(???) avtal med Digg idag. Det finns sedan ett antal fristående utgivare av e-tjänstelegitimationer - störst här är SITHS som ger ut e-tjänstelegitimationer till en majoritet av medarbetarna inom Svensk vård och omsorg.

De digitala identiteterna för fysiska personer autentiseras i regel av en legitimeringstjänst som ansvaras för av utgivaren. Den tjänsteproducerande aktören (även benämnd förlitande part) behöver ha explicit tillit till legitimeringstjänsten.

För systemaktörer finns idag ingen nationell samordning av utgivning av digitala identiteter. Det finns ett antal aktörer som ger ut certifikat som kan nyttjas i mer eller mindre avgränsade syften. SITHS och EFOS ger ut så kallade funktionscertifikat (X.509-certifikat att nyttjas av systemaktörer). Digg ger ut funktionscertifikat till avtalsparter inom Säker Digital Kommunikation (SDK). 

För individer utan vare sig svenskt personnummer eller styrkt samordningsnummer finns idag ingen möjlighet att få en digital identitet. Inom vården används reservidn för detta ändamål, men för interaktion med annan offentlig förvaltning saknas lösning idag - TODO: DOKUMENTERA!!!

<table border=1 bgcolor="lightblue"><tr><td>
Tilliten mellan systemaktörer regleras ofta till det verksamhetskontext där utgivningen skett eller explicit till specifika certifikat baserat på bilaterala avtal
</td></tr></table>

### Vision
Dagens utgivna digitala identiteter behöver fungera även för framtida samverkan inom svensk offentlig förvaltning. Detta då man under lång tid investerat stora summor inom IAM-området och ansvarsfullt användande av statens finanser och skattemedel är av stor betydelse. 

Vi ser även ett behov av ett nationellt kvalitetsmärke för utgivare av funktionscertifikat. Ett sådant kvalitetsmärke kan, i kombination med ett nationellt tillitsfederation, möjliggöra tillitsfull samverkan mellan system.


## Behörighetshantering
För att kunna garantera kvaliteten i den åtkomsthantering som sker bör informationsförsörjningen av behörighetsgrundande information ske med en tillförlitlighet på en nivå som motsvarar skyddsbehovet för den digitala tjänst som beslutet avser.

Högst kvalitet på behörighetsgrundande information fås genom att den part som äger och administrera informationen också används som källa för informationsförsörjningen. Exempelvis bör information om läkarlegitimationer informationsförsörjas från Socialstyrelsens HOSP-register. På samma sätt bör medarbetares uppdragsgivare informationsförsörja information som härrör till de uppdrag medarbetaren har.

### Nuläge

### Vision
**SKRIV OM-->ATTRIBUT...**
*Vidare behöver en person kunna agera utifrån olika uppdrag inom en och samma organisation och utifrån valt uppdrag få olika tillgång till information och funktioner.*

*En behörighetsmodell behöver även ge stöd för att uttrycka ställföreträdande- och andra ombudsroller och det behöver tas fram kodverk och strukturer för att överföra denna information digitalt.*


I många fall är det tidsödande eller ogörligt att informationsförsörja behörighetsstyrande information direkt från källan utan man kopierar informationen till enn annan plats varifrån den enklare kan inhämtas. Detta kan till exempel handla om att en organisation hämtar en fräsch kopia av HOSP varje dag, eller att en legitimeringstjänst cachar dataposter från en informationskälla under en timme innan den inhämtas igen. Detta i syfte att skapa ökad robusthet och bättre svarstider. 

Vad som är en adekvat nivå av säkerhet för cahning behöver man komma överens om, samt om detta ska kunna skilja sig för olika tillämpningsområden eller informationsmängder.

**Rekommendationer:**
<ol>
<li>Behörighetsgrundande information ska ha en utpekad källa</li>
<li>Behörighetsgrundande information kan cachas för mer robust och effektiv åtkomstbeslutshantering</li>
<li>De parter som bifogar behörighetsgrundande information till en digital identitet bör ha granskats för att detta sker kontrollerat och tillitsfullt, exempelvis genom granskning mot ett kvalitetsmärke</li>
</ol>

## Åtkomsthantering
I åtkomsthanteringen knyts alla aspekter av digitalaidentiteter, tillitskedjor, samt informationsförsörjning av behörighetsgrundande information samman.

Korrekta åtkomsbeslut kan vara beroende av informationsförsörjning av behörighetsgrundande från både externa och lokala källor utöver information som tillförts under legitimeringen. 

```mermaid
graph TD
subgraph TO[Tillitsfederation]
    TM(Metadataregister)
end

subgraph IDO[Identitetsutgivare]
    ID(Digital identitet)
    IDA(Autentisering)
end

subgraph AO[Tjänstekonsumerande organisation]
    AK[(uppdragskälla)]
    AL(Legitimeringstjänst) 
end

subgraph NO[Registerhållande organisation]
    NK[(Extern källa)]
end

subgraph BO[Tjänsteproducerande organisation]
    B-AS(Auktorisering)
    B-P(Åtkomstpolicy)
    BK[(Explicita\nBehörigheter)]
    B(Digital tjänst)
end

BO ~~~~~ AO
IDO & AO & BO & NO -.är medlem i.->TO
AL--bifogar info från-->AK
AL--autentiserar digital identitet via-->IDA
B-AS--inhämtar info från-->NK & BK
B-AS--verifierar tillit med hjälp av-->TM
B-AS--utvärderar-->B-P
B--litar på-->B-AS
```
*Beroenden mellan olika aktörer och komponenter för att möjliggöra tillitsfulla åtkomstbeslut*

#######################################


## Övrigt ej sorterat

### OICD Federation och tillit
1. Vad är skillnaden mellan trust anchors, intermediates och trust mark issuers? Är det två olika tillitsstrukturer?
2. Sparas trust marks i samma metadataregister som de digitala identiteterna?

```mermaid
flowchart LR

subgraph AO[Tjänstekonsument]
    A(API-konsumerande system)
end

subgraph BO[Tjänsteproducent]
    B-AS(Auktorisationstjänst)
    B(API)
end

subgraph TO[Sweden Trust - tillitsfederation]
    T-AS(Auktorisationstjänst)
    T(Metadataregister)
end


A--begär åtkomst-->B-AS
A--anropar-->B
B-AS--begär åtkomst-->T-AS
BO & AO -.har tillit till.->TO
B-AS--hämtar behörighetsgrundande attribut-->T
```
### Nationella OAuth2-profiler - behovsinventering

#### 1. Tjänsteperson använder annan organisations e-tjänst

```mermaid
flowchart LR

subgraph BO[Tjänsteproducent]
    subgraph B-IAM[IAM]
        B-U(Uppdragsväljare) & B-ID(Legitimeringstjänst)
        --?-->B-A(Attributkälla)
        B-AS(Auktorisationstjänst)
    end
    B-UI(E-tjänst)
end

subgraph EIDO[eID-utfärdare]
    EID(Autentiseringstjänst)
end

U(Tjänsteperson)--1. vill nyttja-->B-UI
U--2. legitimerar sig via-->B-ID
U--2.1 autentiserar sin digitala identitet mot-->EID
U--2.2 väljer bland tillgängliga\n medarbetaruppdrag-->B-U
U--3. begär åtkomst till tjänst\n med valt uppdrag-->B-AS
B-ID-.medger autentisering med.->EID
```
### Modell för behörighetgrundande attribut

### Attributprofiler


