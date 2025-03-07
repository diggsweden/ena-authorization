<p><img align="right" src="../images/Ena-logo.png" width="25%" Height="25%"></img></p>
<p>&nbsp;</p>

:arrow_backward: [Tillbaka](README.md)

<sup>Senaste uppdatering: 25 oktober 2024</sup>

---------

# Inledning
Samverkan framhålls ofta som lösningen på många av utmaningarna inom den offentliga förvaltningen. Samtidigt står den svenska välfärdsmodellen inför utmaningar när komplexa välfärdstjänster ska samordnas. Komplexiteten uppstår när processer behöver integreras och information delas mellan olika offentliga-, privata- och civilsamhällesaktörer. 

I ett alltmer digitaliserat samhälle ökar efterfrågan på effektiv och tillitsfull identitets- och behörighetshantering. För att kunna erbjuda säker åtkomst till tjänster inom välfärdens digitala samverkansnätverk krävs ofta identifiering av vem som ska ha åtkomst och om subjektet (*[användare](ordlista.md#anvandare)* eller *[systemanvändare](ordlista.md#system)*) har behörighet att agera på det avsedda sättet. Sverige saknar idag en nationell strategi för detta. Vi ser dock en fragmenterad infrastruktur som vuxit fram genom diverse lösningar för specifika verksamhetsområden och sektorer, ofta benämnda som *[federationer](ordlista.md#federation)*. Historiskt har dessa främst fokuserat på användarinloggning, men digitaliseringen idag kräver också allt oftare att maskiner och systemanvändare ska kunna få åtkomst kommunicera över organisationsgränser.

Det som finns idag, verkar konceptuellt kunna fungera tillsammans, men har i praktiken har det visat sig vara svårt att skala upp och integrera – något som vi bedömer bidra till en inbromsning av digitaliseringstakten. Vi bedömer att komplexitet i samverkan och samordning är en orsak. En annan orsak handlar om att digital samverkan mellan organisationer i den ökande digitaliseringen innebär ett större behov av integrationer mellan organisationer och krav på interoperabilitet i flera led. Exempelvis en läkare loggar in i vårdgivarens journalsystem som i sin tur inhämtar eller skickar uppgifter till andra externa system, såsom nationella läkemedelslistan, vilket i sin tur möjliggör för läkare i andra regioner att ta del av om patientens receptförskrivna och uthämtade läkemedel. Digitalisering av vården omfattar också allt fler integrationer mellan systemanvändare, maskiner, api:er och IoT-enheter. Något som dagens federativa infrastrukturer idag ofta saknar. 

Skolan är ett annat område där gränsöverskridande identitets- och behörighetshantering blir allt viktigare. Exempelvis innebär digitalisering av nationella prov att eleven ska skriva prov i en e-tjänst hos Skolverket. Myndigheten Statens skolverk vet förstås inte vem som ska skriva prov i varje skola. Det är ett beslut från rektorn hos Skolhuvudmannen – något som regleras i författningar. Vid provtillfället ska provledaren dela ut det digitala provet till eleven som ska infinna sig fysiskt i provsalen under provledarens uppsikt. Skolverket vet inte vem som är provledare i varje provsal. Det är också något som styrs av rektorn. Om eleven behöver särskilt stöd och funktionsanpassning av prov då är det elevens undervisande lärare som gör bedömningen och fattar beslut i överenskommelse med rektorn.

Krav på interoperabilitet blir särskilt utmanande när en aktör verkas inom flera sektorer, exempelvis en kommun. Kraven ställs i regel utan samordning och kommunen behöver förhålla sig till en mängd olika varianter av krav för anslutning till digitala tjänster och integrationer. En kommun idag behöver hitta förmågor att integrera till nationella läkemedelslistan, digitala nationella prov, Beda (nationella betygsdatabas), SDK (säker digital kommunikation), och många andra integrationer som kravställs av en rad olika myndigheter. Den nuvarande utvecklingen är inte hållbar, vilket vi exempelvis ser genom Sveriges kommuners enighet i frågan om strategisk agenda och ett handslag för välfärdsutveckling där identitets- och behörighetshantering prioriteras allra högst.

<a name="forslag"></a>

## Förslag till sektorsövergripande infrastruktur
Vid gränsöverskridande samverkan mellan aktörer står organisationer ofta inför utmaningen att kontrollera användarens behörighet om denne iklädd rollen Befattningshavare får agera för sin organisations (Huvudmans) räkning. Den infrastruktur som föreslås i detta avsnitt avser möjliggöra för en användare (människa) eller systemanvändare (maskin) att söka åtkomst till en digital tjänst hos en annan organisation, kallad *[förlitande part](ordlista.md#forlitandepart)*. Kommunikation sker via en anslutningspunkt (e-tjänst, api, etc.) som den Förlitande parten tillhandahåller genom sin anslutning till infrastrukturen. Dessa sker med stöd av redan existerande funktioner för elektronisk identifiering och automatiserade funktioner för att kontrollera att användaren eller systemanvändaren är behörighet att agera på det sätt som sker. Således föreslås här en infrastruktur där aktörer som har sådan behörighetsinformation ska på beställning av förlitande part ställa ut sådana intyg med stöd av infrastrukturen.

En användare eller systemanvändare kan erhålla behörighet att agera för sin huvudmans räkning genom författning, delegation, fullmakt eller liknande. I vissa fall kan en användare också ha en yrkesroll som innefattar aktuell behörighet. Det är emellertid inte alltid enkelt för förlitande part att skaffa det underlag som behövs för att kontrollera om behörighet finns i det enskilda fallet. 

Kommunikation om beställning av behörighetsinformation och utlämning av behörighetsintyg sker direkt mellan de aktörer som samverkar. Infrastrukturen är således inte en bärare för informationsutbyte eller nyttjande av digital tjänst, snarare syftar den till att hjälpa aktörer att hitta till varandra, kunna på ett automatiserat och tillförlitligt sätt verifiera varandras anslutningspunkter samt utbyta tekniskt verifierbara referenser om förmågor och kravuppfyllnad, så kallad *[kvalitetsmärken](ordlista.md#kvalitetsmarke)*.  

Denna tilltänkta infrastrukturen bygger på idéer om federationsteknik för att stötta digital samverkan och samordning av komplexa välfärdstjänster inom välfärdens digitala samverkansnätverk. Komplexiteten kan bero på att tjänsterna tillhandahålls av olika former av juridiska aktörer (offentliga-, privata- och civilsamhällsaktörer) inom välfärdssystemet, vilka även kräver samordning mellan relevanta sektorer. Den kan också inkludera komplexitet i informationsflöden när den ökande digitaliseringen ofta kräver interoperabilitet i flera led. De urspunktliga behoven kring användarinloggning, vilka har varit tongivande i utformning av dagens federationer, har nu vidgats till också allt större behov av inloggning av systemanvändare i gränsöverskridande integrationer mellan digitala tjänster, maskiner, api:er och IoT-enheter.

Historiskt har den centraliserade modellen varit styrande i flera decennier. I denna form av infrastruktur bär *[federationsoperatören](ordlista.md#federationsoperator)* stort ansvar avseende på såväl administration som kontroll av aktörer och deras uppfyllnad av viktiga specifikationer och regelverk. Erfarenheter från dessa federationer har visat att det kan vara både svårt och komplicerat när all administration och kontroll koncentreras till en sammanhållen federationsoperatör. Även om federationsoperatören kan införa olika former av delegerat ansvar, så är det i slutändan federationsoperatören som ikläder sig det yttersta ansvaret och är den som signerar och publicerar betrodd information om alla aktörer i federationen. 

Den infrastrukturmodell som nu förespråkas hänvisar till internetstandarden OpenID Federation, som förespråkar en decentraliserad modell av administration, registrering och distribution av teknisk tillitsinformation om digitala tjänster. OpenID Federation avser öppna för en mer dynamisk och flexibel modell som kan fördelar ansvaret för tilliten till flera parter och ansvarsområden. Den har dessutom en större flexibilitet avseende tillämpning av olika tekniska protokoll och ger ett adekvat stöd för att lösa behoven av gränsöverskridande identitets- och åtkomsthantering för både användare och systemanvändare. 


<a name="arbetsgrupp"></a>

## Arbetsgrupp
Ena är Sveriges förvaltningsgemensamma digitala infrastruktur[^1] där information kan utbytas säkert och effektivt. De komponenter som realiserar infrastrukturen kallas för byggblock, som är ett samlingsnamn för ett antal ”delar” som kan vara tekniska förmågor, tjänster, standardiserade modeller, ramverk och mönster. De ska lösa gemensamma infrastrukturella utmaningar inom ett fokusområde, som i detta sammanhang handlar om gränsöverskridande identitets- och behörighetshantering. 

Informationen här i arbetsgruppens yta på GitHub har skapats inom ramen för arbetet i byggblock Auktorisation och omfattar dokumentation om infrastruktur och förvaltningsgemensamma digitala tjänster med fokus på säker åtkomst till digitala tjänster för människor, organisationer och smarta saker.

Byggblocket har en fast arbetsgrupp som träffas i regel på veckobasis, en vardag under normala kontorstider. I nuvarande arbetsgrupp ingår företrädare från Digg, E-hälsomyndigheten, Inera och Region Stockholm. Därutöver bedrivs även arbete med särskilda teman, utifrån intresse, behov eller på uppdragsbasis. Under innehavande år har följande arbetsgrupper varit aktiva inom byggblocket:
-	Infrastruktur för identifiering och förmedling av behörighetsintyg i systemintegrationer (maskin-maskin). I arbetsgruppen ingår företrädare från Digg, Skolverket, SUNET och Internetstiftelsen.
-	Federationsoperatörens roll och nationell federationsstruktur. I arbetsgruppen ingår företrädare från Digg, SUNET och Internetstiftelsen.

Arbetsgruppens yta här i GitHub är en publik samarbetsyta, öppen och tillgänglig för alla. Allt material är dock att betrakta som utkast och arbetsdokument under tidiga faser (idé och koncept). Arbetsgruppens ambition med ytan är att göra materialet lättillgänglig och skapa transparens för att kunna få feedback och förslag. Syftet är alltså inte produktion av färdiga specifikationer för implementering. 
  
<a name="malgrupp"></a>

## Målgrupp
Detta dokument behandlar frågor om identitets- och behörighethantering vid gränsöverskridande samverkan mellan organisationer. Dokumentet riktar sig i första hand till IT-beslutsfattare, IT-strateger, IT-arkitekter samt beställare/utvecklare av digitala tjänster inom verksamheter som är offentliga, offentligt finansierade eller utför uppgifter som på något sätt är offentligrättsligt reglerade.

<a name="termer"></a>

## Definition av centrala termer och begrepp

<a name="IAM"></a>

### Identitet, behörighet och åtkomstbeslut
*<mark>Identitet</mark>* inom ramen för detta dokuments sammanhang handlar om ett elektroniskt *[identitetsbevis](ordlista.md#identitetsbevis)*, som kan bestyrka *[identiteten](ordlista.md#identitet)* för ett subjekt, det vill säga en *[användare](ordlista.md#anvandare)* (människa) eller *[systemanvändare](ordlista.md#system)* (maskin), som interagerar med digitala tjänster i en användningssituation. 

En kontrollerad identitetshantering är viktig hörnsten i ett adekvat säkerhetsskydd och en nödvändig del av den samlade infrastrukturen för digital samverkan över organisationsgränser. 

Medan identitet handlar om vem är subjektet som använder en digital tjänst, handlar *<mark>behörighet</mark>* om vad subjektet har rätt att se och göra. I tekniska termer utförs *[identifiering](ordlista.md#identifiering)* genom *[autentisering](ordlista.md#autentisering)* och behörighetskontroll genom *<mark>åtkomstbeslut</mark>*, även kallad *[auktorisation](ordlista.md#auktorisation)*. 

Identifiering och behörighetskontroll är två närliggande och nödvändiga komponenter för åtkomstbeslut, men är samtidigt två helt skilda säkerhetsprocesser som sker när exempelvis en användare ska logga in i en e-tjänst: (1) att på ett tillräckligt säkert sätt kontrollera vem användaren är; och (2) att på ett tillförlitligt sätt verifiera användarens behörigheter för användningen av e-tjänsten.

<a name="tillit"></a>

### Tillitsfull digital samverkan
När två aktörer ska samverka och utbyta information digitalt krävs att parterna ska ha tillräcklig tillit till varandra utan att behöva involvera andra. Detta är exempelvis fallet när två aktörer utbyter intyg för att den som tillhandahåller e-tjänsten (*<mark>förlitande part</mark>*) ska kunna fatta åtkomstbeslut för den användare som agerar i den andra aktörens vägnar. Samverkan uppstår inte heller ur ett vakuum – den är snarare alltid förankrad i ett behov och ett specifikt sammanhang. Det finns därför en distinktion mellan en gemensam digital infrastruktur som alla organisationer kan använda och det faktum att alla parter i nätverket inte har behovet eller ska samarbeta med alla andra i välfärdens värdenätverk. För de aktörer som behöver samverka är tillit avgörande för att denna samverkan ska fungera effektivt. Det handlar inte bara om tekniska lösningar utan också om ansvarsfrågor, systematiskt säkerhetsarbete och lagar, exempelvis behandling av personuppgifter.

I situationer där aktörer inte har en direkt relation eller känner varandra, kan en tredje betrodd part involveras för att kunna forma en *<mark>tillitskedja</mark>* mellan aktörerna. Exempelvis förlitar sig många idag på identitetskontroller som utförs av en e-legitimationsutfärdare, vilka Digg har granskat enligt *[tillitsramverket för Svensk e-legitimation](ordlista.md#svenskelegitimation)*. Den förlitande parten som behöver identifiera sina användare kan på så sätt lita på statens kvalitetsmärke och slipper på egen hand verifiera utfärdarens kravuppfyllnad. Liknande system finns på sektornivå, inom vården, forskning och högre utbildningar, där en federationsoperatör utför tillitgranskning för att kunna gå i god för en aktörs digitala tjänst.

Det är dock viktigt att poängtera att en sådan granskning eller tillitsetablering kan inte alltid garantera absolut sanning. I ett informationsutbyte mellan två organisationer kan aktörer ibland behöva acceptera den information som ges, även om full tillit kan i vissa fall saknas. Vid utbyte av ett betyg i ett enskilt ärende finns endast det som kan tillgås, även om den ansvariga skolan kan förmodat vara mer generös i sina bedömningar än andra skolor. Den typen av tillitsfrågor hanteras inte av infrastrukturen och är i slutändan reglerade av processer och beslut hos ansvariga tillsynsmyndigheter – i detta exempel Skolinspektion. Inspektionen för vård och omsorgs (IVO) som utövar tillsyn enligt bestämmelser i 7 kap. patientsäkerhetslagen (2010:659) kan också nämnas som exempel. IVO har ett vidsträckt uppdrag som även kan anknyta till såväl behörighetskontroller som säkerheten i informationssystem. Den tillitsetablering som behandlas av denna arbetsgrupp handlar snarare om frågor som ger förutsättningar till *<mark>tillitsfullt åtkomstbeslut</mark>* genom att erbjuda tekniska möjligheter för varje förlitande part att inom ramen för sitt ansvar kunna kontrollera ett intygs äkthet och bedöma om identitets- och behörighetsuppgifter täcker den aktuella åtgärden som kan beviljas av ett åtkomstbeslut. 

Den som ska fatta beslut om åtkomst till skyddsvärd information måste på så sätt kunna verifiera:<br />
A)	Vem som i rollen användare eller systemanvändare agerar åt sin huvudmans vägnar,<br />
B)	Vem som är huvudmannen (användarorganisationen) i det aktuella fallet,<br />
C)	Om huvudmannen anser att användaren har behörighet att utföra uppgiften (rätt att agera),<br />
D)	Riktigheten i de påstådda kvalifikationerna och kravuppfyllnad genom tekniskt verifierbara kvalitetsmärken. 

<a name="ordlista"></a>

### Ordlista
Arbetsgruppen har tagit fram en ordlista med definitioner som är specifikt anpassade för att förklara användningen av termer och begrepp inom området identitets- och behörighetshantering med fokus på Sveriges digitala infrastruktur (ENA) och digital samverkan över organisationsgränser.

**[Öppna ordlistan](ordlista.md)**
<br /><br />


[^1]: [Ena - Sveriges digitala infrastruktur | Digg - Myndigheten för digital förvaltning](https://www.digg.se/ledning-och-samordning/ena---sveriges-digitala-infrastruktur)
