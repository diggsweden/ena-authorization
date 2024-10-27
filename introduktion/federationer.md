<p><img align="right" src="../images/Ena-logo.png" width="25%" Height="25%"></img></p>
<p>&nbsp;</p>

:arrow_backward: [Tillbaka](README.md)

<sup>Senaste uppdatering: 27 oktober 2024</sup>

---------

# Svenska federationer
Federationer mellan samverkande aktörer är ett etablerat sätt att effektivt delegera delar av auktorisationsprocessen. Genom att en part förlitar sig på en annan parts administrativa och tekniska system för att kontrollera användares identitet och/eller behörigheter skapas bättre förutsättningar för samordning och effektivt informationsutbyte mellan aktörer över organisationsgränser.

Denna sida introducerar konceptet federation för digital samverkan, där fokus ligger på etablering av tillit, federerad inloggning samt tekniska protokoll för digital interoperabilitet. Här presenteras även de svenska federationer som används idag för att digital samverkan inom välfärdens samverkansnätverk.

<a name="federation"></a>

## Federation

<a name="tillit"></a>

### Etablering av tillit
Identitets- och/eller behörighetskontrollerande part respektive förlitande part behöver känna till och ha tillit till varandra. Genom att utbyta och registrera varandras metadata kan parter ingå ett förtroendeavtal på protokollnivå. Detta steg representerar initial tillåtelse för de två parterna att kommunicera med varandra och möjliggör säkert informationsutbyte mellan parterna. Förtroendeavtalet kan etableras bilateralt genom direkt utbyte mellan parterna, eller via registrerade metadata hos en betrodd tredje part. Parametrar för vad som kan begäras och släppas fastställs i detta steg, även om detaljerna om vilka attribut som släpps till en viss förlitande part för en viss användare kan skjutas upp till ett senare skede. Etablering av förtroendeavtal på protokollnivå föregås alltid av ett policybeslut som ger parter tillåtelse att ingå i federation samt reglerar de digitala tjänsternas representation och utformning i metadata genom federationsprotokollet.

<a name="inloggning"></a>

### Federerad inloggning
Det är först när förtroendeavtal är etablerat mellan identitetskontrollerande part och förlitande part, inklusive bestämmelser om attributredogörelse och krav på *tillitsnivåer*, som en användare kan genomföra transaktionen för att exempelvis logga in på en digital tjänst hos den förlitande parten. Den identitetskontrollerande partens intygstjänst ställer då ut ett *identitetsintyg* till förlitande part efter att användaren har identifierats. Förlitande partens digitala tjänst verifierar och bearbetar intyget och etablerar sedan en autentiserad session för användaren.

<a name="protokoll"></a>

### Tekniska protokoll
Tekniska protokoll är centrala för att möjliggöra standardiserad och säker kommunikation. Dessa protokoll omfattar både etablering av tillit mellan aktörer och mekanismer för autentisering och behörighetsstyrning.

Metadatautbytet etablerar en säker kommunikationslinje för interoperabiltiet och specificerar tekniska parametrar, såsom adresseringsinformation, uppgifter om certifikat och säkerhetsnivåer för att verifiera intyg och attribut. Två vanliga protokoll för detta ändamål är *SAML*[^1] och *OpenID Federation*[^2]. SAML är ett välanvänt protokoll som använts i många år för att etablera säker metadatautbyte inom federationer. OpenID Federation är däremot ett relativt nytt protokoll som är utformat för decentraliserade federationsstrukturer, särskilt för federerade miljöer med dynamiska och varierande behov. Den ger större flexibilitet jämfört med SAML i distribuerade och komplexa federerade ekosystem.

SAML inkluderar även det standardprotokoll som möjliggör överföring av autentiserings- och identitetsuppgifter för federerad inloggning. När en användare loggar in via SAML skapas ett digitalt identitetsintyg, som intygar användarens identitet och eventuell behörighet till den förlitande parten i federationen. *OpenID Connect (OIDC)*[^3] är annat (nyare) protokoll som möjliggör federerad inloggning på ett sätt som passar moderna webbtjänster och mobila appar. Den bygger på *OAuth 2.0*[^4] och använder ID-tokens och access tokens för att överföra information mellan parter, vilket underlättar att implementera olika tillitsnivåer och autentiseringskrav. OAuth-protokollet är framförallt utformat för behörighetshantering. Den är särskilt användbart i scenarion där en digital tjänst behöver begränsad åtkomst till en annan digital tjänsts resurser på användarens vägnar. Till skillnad från SAML och OIDC, som främst fokuserar på autentisering, är OAuth designat för åtkomstbeslut, vilket innebär att det definierar vad en användare har rätt att göra, snarare än vem användaren är.

<a name="dagensfederationer"/>

## Dagens federationer
Detta avsnitt ger kortfattade beskrivningar av de federationer som berör samhällsnära verksamheter i Sverige.

<a name="swedenconnect"/>

### Sweden Connect
*Sweden Connect*[^5] är en identitetsfederation som skapades utifrån Diggs uppdrag[^6] att tillhandahålla en svensk anslutningspunkt för att möjliggöra internationell e-legitimering i enlighet med eIDAS-förordningen. Federationen standardiserar integrationsmönstret för inhämtning av identitetsintyg till en digital tjänst, som hanteras av förlitande parter. Målet är att förenkla och effektivisera utvecklingen av lösningar för e-legitimering och e-underskrifter. Genom att undvika behovet av leverantörsspecifika tekniska specifikationer strävar Sweden Connect efter att möjliggöra anslutning av alla e-legitimationer på ett enhetligt sätt. Detta gör att Sweden Connect, som en digital infrastruktur för Sverige, också kan tillgodose nationella behov för e-legitimering och valfrihetssystem i fråga om tjänster för elektronisk identifiering. På så sätt har Sweden Connect utvecklats till att även inbegripa den nationella infrastrukturen för e-legitimering. Organisationer inom svensk offentliga sektor kan dra nytta av identitetsfederationen för att erbjuda svenska e-legitimationer för inloggning till sina e-tjänster.

Tillitsmodellen i Sweden Connect grundar sig i *tillitsramverk för Svensk e-legitimation*[^7]. E-legitimering får endast göras med godkända e-legitimationer. E-legitimationsutfärdarna eller deras ombud deltar i identitetsfederationen genom att tillhandahålla en funktion för förmedling av identitetintyg (IdP). Samtliga e-legitimeringstjänster i Sweden Connect ska följa Diggs tekniska ramverk och måste godkännas för anslutning till Sweden Connect. E-legitimeringstjänster som förmedlar identitetsintyg på tillitsnivå granskas även enligt tillitsramverket Svensk e-legitimation.  

Sweden Connect är en renodlad identitetsfederation för e-legitimering och inbegriper inte tekniska specifikationer och attributprofiler för förmedling av behörighetsstyrande attribut. Tillägget e-legitimation för medarbetare, även kallad e-tjänsteledigitmation, erbjuder stöd för identifiering med hjälp av en unik och persistent tjänstebeteckning kopplad till arbetsgivarens organisationsnummer som komplement till identifiering genom personnummer. Ett sådant organisationsspecifikt identitetsattribut kan i vissa tillämpningar anses vara tillräckligt underlag för beslut om åtkomst (auktorisation), men inte alltid.

Digg är federationsoperatör för Sweden Connect.

<a name="swamid"/>

### SWAMID
*SWAMID*[^8] drivs av Sunet och utgår från Vetenskapsrådets uppdrag att tillhandahålla IT-tjänster till högskolesektorn. Federationen möjliggör för studerande, forskare och anställda vid lärosäten att logga in och få åtkomst till behörighetsskyddad information och tjänster över organisationsgränser nationellt och internationellt. Inom SWAMID hanteras såväl uppgifter för identifiering som attribut som läggs till grund för behörighetsstyrning. Federationen är baserad på konceptet organisationstillit. Det innebär att den som tillhandhåller en e-tjänst genom egna bedömningar fäster tillit till att användarorganisationen (i regel universitet eller högskola) hanterar sina användare och inloggningsmedel tillräckligt bra. 
För att definiera vad som är tillräckligt säkert finns olika tillitsprofiler som deltagande aktörer förhåller sig till genom egenkontroller. Basnivån kallas SWAMID AL1. För tillitsprofilen SWAMID AL2 ställs högre krav på att lärosätet har identifierat vem användaren är. I vissa fall behövs ännu högre inloggningssäkerhet, SWAMID AL3.

Swamid har en styrgrupp som väljs av medlemmarna. Sunet är federationsoperatör och driver det operativa arbetet med federationen.

<a name="sambi"/>

### Sambi
*Sambi*[^9] är en federation för identitets- och behörighetshantering inom hälsa, vård och omsorg samt veterinärer. Sambi tillkom ursprungligen i samverkan mellan Internetstiftelsen, Cehis som blev Inera och Apotekens Service AB, i allt väsentligt dagens E-hälsomyndighet. Sambis tillitsmodell är baserad på organisationsstillit och för att kunna bli medlem måste varje part ha genomgått en granskning av sin organisationens informationssäkerhetsarbete och internkontroll. Sambis tillitsramverk ställer krav på att identitet ska inhämtas från en godkänd e-legitimation på minst tillitsnivå 3 i enlighet med tillitsramverk för Svensk e-legitimation. Leverans av identitetsintyg till förlitande part sker dock via användarorganisationens intygsförmedling och identitetsintyget inkluderar även behörighetsstyrande attribut. Det innebär att förlitande part därmed litar på den levererande sidans informationssäkerhetsarbete, liksom internkontroll avseende hantering av intygsförmedling samt de attribut som förmedlas om användarens identitet och medarbetaruppdrag (behörigheter). Som en utveckling av Sambi finns även en prototyp till federation för system till system autentisering, även kallad Fedvis, som är tänkt att fungera som en övergångslösning för regionerna under den tid de byter journalsystem och behöver säkerställa åtkomst till nationella läkemedelslistan. 

Sambi har en styrgrupp bestående av E-hälsomyndigheten, Region Stockholm, Västra Götalandsregionen, Apotek Hjärtat, Vårdföretagarna och Internetstiftelsen. Sambi har även ett tekniskt federationsråd med representanter från medlemmarna. Rådet bidrar till utveckling och agerar bollplank till Internetstiftelsen, som är federationsoperatör och driver det operativa arbetet med federationen. I den ursprungliga uppsättningen av Sambi var de tre grundarna gemensamt ansvariga för federationen, men den rollen innehas idag av Internetstiftelsen. 

<a name="skolfederation"/>

### Skolfederation
*Skolfederation*[^10] är en digital infrastruktur för skolpersonals och elevers inloggningar och single sign-on till digitala tjänster och läromdel. Skolfederation växte fram som en effekt av ett projekt inom SIS: IT-standarder för lärande. Idag omfattar federationen även en infrastruktur för autentisering genom ömsesidig TLS (fedTLS), vilken används för att upprätta säker kommunikation för överföring av behörighetsgrundande attribut direkt mellan olika parters IT-system. Tilliten i Skolfederation grundas i organisationstillit, som i delar liknar federationen Sambi. Identitets- och behörighetsfederationens tekniska ramverk, och till viss del federationens attributprofil, utgår från strukturen i SWAMID. Skolfederation har en arbetsgrupp som består av medlemmar, både användarorganisationer och tjänsteleverantörer. 
Internetstiftelsen är federationsoperatör.

<a name="fidus"/>

### Fidus
*Fidus*[^11] är en interfederation från Skolverket. Sammanslutningen omfattar bland annat federationerna SWAMID och Skolfederation. Skolverket har ett regeringsuppdrag för digitala nationella prov och har som ett led i myndighetens sektorsansvar för digitalisering av skolan bildat en så kallad interfederation med Skolverket som huvudman och Sunet som interfederationsoperatör. Skolverket har upprättat en policy som tillåter att andra federationer kan ingå i FIDUS så länge dessa följer Skolverkets regler. Relevanta villkor överförs och regelverket påverkar i sin tur de avtal och överenskommelser som upprättas mellan federationsoperatörer och medlemmarna i de olika federationerna. Fidus regleras genom en styrgrupp och ett federationsråd där de ingående federationerna har representation. 

[^1]: [SAML 2.0 | OASIS Open](https://docs.oasis-open.org/security/saml/Post2.0/sstc-saml-tech-overview-2.0.html)
[^2]: [OpenID Federation 1.0 | OpenID Foundation](https://openid.net/specs/openid-federation-1_0.html)
[^3]: [OpenID Connect 1.0 | OpenID Foundation](https://openid.net/specs/openid-connect-core-1_0.html)
[^4]: [OAuth 2.0 | IETF](https://datatracker.ietf.org/doc/html/rfc6749)
[^5]: [Sweden Connect](https://swedenconnect.se/) 
[^6]: [Vårt uppdrag | Digg - Myndigheten för digital förvaltning](https://www.digg.se/om-oss/vart-uppdrag)
[^7]: [Tillitsramverk för Svensk e-legitimation](https://www.digg.se/digitala-tjanster/e-legitimering/tillitsnivaer-for-e-legitimering/tillitsramverk-for-svensk-e-legitimation)
[^8]: [SWAMID](https://www.sunet.se/services/identifiering/swamid)
[^9]: [Sambi](https://sambi.se/)
[^10]: [Skolfederation](https://skolfederation.se/)
[^11]: [Fidus](https://www.skolverket.se/om-oss/var-verksamhet/skolverkets-prioriterade-omraden/digitalisering/digitala-nationella-prov/tekniska-forutsattningar-for-digitala-nationella-prov/interfederationen-fidus)

