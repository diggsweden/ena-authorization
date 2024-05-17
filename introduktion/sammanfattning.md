<p><img align="right" src="../images/Ena-logo.png" width="25%" Height="25%"></img></p>
<p>&nbsp;</p>

:arrow_backward: [Tillbaka](README.md)

<sup>Senaste uppdatering: 15 maj 2024</sup>

---------

# Sammanfattning
*Identitet* i detta sammanhang handlar om ett elektroniskt identitetsbevis, som kan bestyrka identiteten för ett subjekt, det vill säga en människa eller maskin, som interagerar med digitala tjänster i olika användningssituationer. En kontrollerad identitetshantering är viktig hörnsten i ett adekvat säkerhetsskydd och nödvändigt för etablering av en samlad infrastruktur för digital samverkan över organisationsgräner. Medan identitet handlar om vem användaren är, handlar *behörighet* om vad denna användare har rätt att se och göra. I tekniska termer utförs identifiering genom *autentisering* och behörighetskontroll genom *auktorisation*. Dessa är två närliggande och nödvändiga komponenter för åtkomstsbeslut, men är samtidigt två helt skilda säkerhetsprocesser som sker när en användare ska logga in i en e-tjänst: (1) att på ett tillräckligt säkert sätt kontrollera vem användaren är; och (2) att på ett tillförlitligt sätt verifiera användarens behörigheter för användningen av e-tjänsten.

*E-legitimation* är en elektronisk id-handling som kan användas för att identifiera en person vid inloggning till en digital tjänst. För e-legitimering finns idag en nationell infrastruktur, identitetsfederationen *Sweden Connect*, som bland annat erbjuder anslutning till Sveriges förbindelsepunkt för internationell e-legitimering enligt EU-förordningen eIDAS[^1]. Sweden Connect får även större betydelse i framtiden med den nya lagen om auktorisationssystem i fråga om tjänster för elektronisk identifiering[^2]. 

Sverige saknar idag en sammanhållen nationell samsyn på hur identitets- och behörighetshantering ska fungera när digitala interaktioner går tvärs över verksamhetsdomäner och organisationsgränser. De lösningar som finns idag bygger i stort sätt på bilaterala avtal eller olika former av sammanslutningar och överenskommelser om federerad åtkomst inom diverse verksamhetsdomäner. Sammanslutningar för federerad åtkomst, även kallad *[federationer](federationer.md)*, används när en part i federationen accepterar att förlita sig på en annan parts administrativa och tekniska system för att kontrollera en användares identitet och/eller behörighet. Dessa realiseras i praktiken genom olika former av attributkällor, vilka integreras till organisationernas IT-system baserat på någon form av överenskommen standard och tekniska protokoll. Den vanligaste förekommande tekniken i federationer inom offentlig sektor är SAML 2.0 och används i en stor utsträckning av verksamheter inom högre utbildningar, skola- och utbildning, hälsa, vård och omsorg.

För att federationer ska verka genom en sammanhållen nationell samsyn med avseende på hur identitets- och behörighetshantering ska fungera över organisationsgränser krävs att parter kan komma överens över verksamhetsgränser och kunskapsdomäner om formerna för vilka aktörer som får ingå i en sammanslutning, vilka standarder som ska följas, vilka säkerhetslösningar som ska nyttjas, vilka administrativa processer som ska följas och hur kostnader ska fördelas. Genom avtal dokumenterar parterna att man är överens om att följa det federativa systemets regler och utifrån dessa lita på information som andra organisationer förmedlar om sina användare. Ibland förekommer också någon form av granskning och det kan finnas möjlighet att begära skadestånd om en skada uppstår på grund av att dessa regler ej följts.

Tillit mellan parter och deras digitala tjänster etableras vanligtvis genom något någon form av *[tillitsmodell](tillit.md)*. Den tekniska reliseringen utgår från en uppsättning av tekniska protokoll och specifikationer för att möjliggöra federerad åtkomst.


[^1]: [eIDAS-förordningen](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv%3AOJ.L_.2014.257.01.0073.01.ENG)
[^2]: [lagen (2023:704) om auktorisationssystem i fråga om tjänster för elektronisk identifiering och för digital post](https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/lag-2023704-om-auktorisationssystem-i-fraga-om_sfs-2023-704/)
