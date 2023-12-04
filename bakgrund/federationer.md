# Dagens federationer
Detta avsnitt ger kortfattade beskrivningar av de federationer som berör samhällsnära verksamheter i Sverige.

<a name="swedenconnect"/>

## Sweden Connect
[Sweden Connect](https://swedenconnect.se/) är en identitetsfederation som skapades utifrån Diggs uppdrag att tillhandahålla en svensk anslutningspunkt för att möjliggöra internationell e-legitimering i enlighet med eIDAS-förordningen. Federationen standardiserar integrationsmönstret för inhämtning av identitetsintyg till en digital tjänst, som hanteras av förlitande parter. Målet är att förenkla och effektivisera utvecklingen av lösningar för e-legitimering och e-underskrifter. Genom att undvika behovet av leverantörsspecifika tekniska specifikationer strävar Sweden Connect efter att möjliggöra anslutning av alla e-legitimationer på ett enhetligt sätt. Detta gör att Sweden Connect, som en digital infrastruktur för Sverige, också kan tillgodose nationella behov för e-legitimering och valfrihetssystem i fråga om tjänster för elektronisk identifiering. På så sätt har Sweden Connect utvecklats till att även inbegripa den nationella infrastrukturen för e-legitimering. Organisationer inom svensk offentliga sektor kan dra nytta av identitetsfederationen för att erbjuda svenska e-legitimationer för inloggning till sina e-tjänster.

Tillitsmodellen i Sweden Connect grundar sig i *[tillitsramverk för Svensk e-legitimation](https://www.digg.se/digitala-tjanster/e-legitimering/tillitsnivaer-for-e-legitimering/tillitsramverk-for-svensk-e-legitimation)*. 
E-legitimering får endast göras med godkända e-legitimationer. E-legitimationsutfärdarna eller deras ombud deltar i identitetsfederationen genom att tillhandahålla en funktion för förmedling av identitetintyg (IdP). Samtliga e-legitimeringstjänster i Sweden Connect ska följa Diggs tekniska ramverk och måste godkännas för anslutning till Sweden Connect. E-legitimeringstjänster som förmedlar identitetsintyg på tillitsnivå granskas även enligt tillitsramverket Svensk e-legitimation.  

Sweden Connect är en renodlad identitetsfederation för e-legitimering och inbegriper inte tekniska specifikationer och attributprofiler för förmedling av behörighetsstyrande attribut. Tillägget e-legitimation för medarbetare, även kallad e-tjänsteledigitmation, erbjuder stöd för identifiering med hjälp av en unik och persistent tjänstebeteckning kopplad till arbetsgivarens organisationsnummer som komplement till identifiering genom personnummer. Ett sådant organisationsspecifikt identitetsattribut kan i vissa tillämpningar anses vara tillräckligt underlag för beslut om åtkomst (auktorisation), men inte alltid.

Digg är federationsoperatör för Sweden Connect.

<a name="swamid"/>

## SWAMID
[SWAMID](https://www.sunet.se/services/identifiering/swamid) drivs av Sunet och utgår från Vetenskapsrådets uppdrag att tillhandahålla IT-tjänster till högskolesektorn. SWAMID möjliggör för studerande, forskare och anställda vid lärosäten att logga in och få åtkomst till behörighetsskyddad information och tjänster över organisationsgränser nationellt och internationellt. Inom SWAMID hanteras såväl uppgifter för identifiering som attribut som läggs till grund för behörighetsstyrning. Federationen är baserad på konceptet organisationstillit. Det innebär att den som tillhandhåller en e-tjänst genom egna bedömningar fäster tillit till att användarorganisationen (i regel universitet eller högskola) hanterar sina användare och inloggningsmedel tillräckligt bra. 
För att definiera vad som är tillräckligt säkert finns olika tillitsprofiler som deltagande aktörer förhåller sig till genom egenkontroller. Basnivån kallas SWAMID AL1. För tillitsprofilen SWAMID AL2 ställs högre krav på att lärosätet har identifierat vem användaren är. I vissa fall behövs ännu högre inloggningssäkerhet, SWAMID AL3.

Swamid har en styrgrupp som väljs av medlemmarna. Sunet är federationsoperatör och driver det operativa arbetet med federationen.

<a name="sambi"/>

## Sambi
[Sambi](https://sambi.se/) är en federation för identitets- och behörighetshantering inom hälsa, vård och omsorg samt veterinärer. Sambi tillkom ursprungligen i samverkan mellan Internetstiftelsen, Cehis som blev Inera och Apotekens Service AB, i allt väsentligt dagens E-hälsomyndighet. Sambis tillitsmodell är baserad på organisationsstillit och för att kunna bli medlem måste varje part ha genomgått en granskning av sin organisationens informationssäkerhetsarbete och internkontroll. Sambis tillitsramverk ställer krav på att identitet ska inhämtas från en godkänd e-legitimation på minst tillitsnivå 3 i enlighet med tillitsramverk för Svensk e-legitimation. Leverans av identitetsintyg till förlitande part sker dock via användarorganisationens intygsförmedling och identitetsintyget inkluderar även behörighetsstyrande attribut. Det innebär att förlitande part därmed litar på den levererande sidans informationssäkerhetsarbete, liksom internkontroll avseende hantering av intygsförmedling samt de attribut som förmedlas om användarens identitet och medarbetaruppdrag (behörigheter). Som en utveckling av Sambi finns även en prototyp till federation för system till system autentisering, även kallad Fedvis, som är tänkt att fungera som en övergångslösning för regionerna under den tid de byter journalsystem och behöver säkerställa åtkomst till nationella läkemedelslistan. 

Sambi har en styrgrupp bestående av E-hälsomyndigheten, Region Stockholm, Västra Götalandsregionen, Apotek Hjärtat, Vårdföretagarna och Internetstiftelsen. Sambi har även ett tekniskt federationsråd med representanter från medlemmarna. Rådet bidrar till utveckling och agerar bollplank till Internetstiftelsen, som är federationsoperatör och driver det operativa arbetet med federationen. I den ursprungliga uppsättningen av Sambi var de tre grundarna gemensamt ansvariga för federationen, men den rollen innehas idag av Internetstiftelsen. 

<a name="skolfederation"/>

## Skolfederation
[Skolfederation](https://skolfederation.se/) är en digital infrastruktur för skolpersonals och elevers inloggningar och single sign-on till digitala tjänster och läromdel. Skolfederation växte fram som en effekt av ett projekt inom SIS: IT-standarder för lärande. Idag omfattar federationen även en infrastruktur för autentisering genom ömsesidig TLS (fedTLS), vilken används för att upprätta säker kommunikation för överföring av behörighetsgrundande attribut direkt mellan olika parters IT-system. Tilliten i Skolfederation grundas i organisationstillit, som i delar liknar federationen Sambi. Identitets- och behörighetsfederationens tekniska ramverk, och till viss del federationens attributprofil, utgår från strukturen i SWAMID. Skolfederation har en arbetsgrupp som består av medlemmar, både användarorganisationer och tjänsteleverantörer. 
Internetstiftelsen är federationsoperatör.

<a name="fidus"/>

## Fidus
[Fidus](https://www.skolverket.se/om-oss/var-verksamhet/skolverkets-prioriterade-omraden/digitalisering/digitala-nationella-prov/tekniska-forutsattningar-for-digitala-nationella-prov/interfederationen-fidus) är en interfederation från Skolverket. Sammanslutningen omfattar bland annat federationerna SWAMID och Skolfederation. Skolverket har ett regeringsuppdrag för digitala nationella prov och har som ett led i myndighetens sektorsansvar för digitalisering av skolan bildat en så kallad interfederation med Skolverket som huvudman och Sunet som interfederationsoperatör. Skolverket har upprättat en policy som tillåter att andra federationer kan ingå i FIDUS så länge dessa följer Skolverkets regler. Relevanta villkor överförs och regelverket påverkar i sin tur de avtal och överenskommelser som upprättas mellan federationsoperatörer och medlemmarna i de olika federationerna. Fidus regleras genom en styrgrupp och ett federationsråd där de ingående federationerna har representation. 


---------


<p>
<img align="left" src="../images/Ena-logo.png" width="25%" Height="25%"></img>
<img align="right" src="../images/NextGenEU-logo.png" width="25%" Height="25%"></img>
</p>



 :arrow_backward: [Tillbaka](README.md)
