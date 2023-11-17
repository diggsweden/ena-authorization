##### Innehållsförteckning  
- [Bakgrund](#bakgrund)
- [Dagens federationer](federationer.md)
  - [Sweden Connect](federationer.md#swedenconnect)
  - [SWAMID](federationer.md#swamid)
  - [Sambi](federationer.md#sambi)
  - [Skolfederation](federationer.md#skolfederation)
  - [Fidus](federationer.md#fidus)
----

<a name="bakgrund"/>

# Bakgrund
Identitet handlar om vem du är, medan behörighet handlar om vad du har rätt att se eller göra. I tekniska termer utförs identifiering genom *autentisering* och behörighetskontroll genom *auktorisation*. Dessa är två närliggande och nödvändiga komponenter för åtkomstsbeslut, men är samtidigt två helt skilda säkerhetsprocesser som sker när en användare ska logga in i en e-tjänst: (1) att på ett tillräckligt säkert sätt kontrollera vem användaren är; och (2) att på ett tillförlitligt sätt verifiera användarens behörigheter för användningen av e-tjänsten.

E-legitimation är en elektronisk id-handling som kan användas för användarens autentisering till digitala tjänster. För e-legitimering finns en nationell infrastruktur genom identitetsfederationen Sweden Connect. Sverige saknar dock en sammanhållen nationell samsyn på hur identitets- och behörighetshantering ska fungera när digitala interaktioner går tvärs över verksamhetsdomäner och organisationsgränser. De lösningar som finns idag bygger i stort sätt på bilaterala avtal eller olika former av sammanslutningar och överenskommelser om federerad åtkomst inom diverse verksamhetsdomäner. Sammanslutningar för federerad åtkomst, även kallad federationer, används när en part i federationen accepterar att förlita sig på en annan parts administrativa och tekniska system för att kontrollera en användares identitet och/eller behörighet. Detta realiseras i praktiken genom olika former av attributkällor, vilka integreras till organisationernas IT-system baserat på någon form av överenskommen standard och tekniska protokoll. Den vanligaste förekommande tekniken i federationer inom offentlig sektor är SAML 2.0.

För att en federation av detta slag ska komma till stånd krävs att parterna kommer överens om vilka aktörer som får ingå i sammanslutningen, vilka standarder man ska följa, vilka säkerhetslösningar som ska nyttjas, vilka administrativa processer som ska följas och hur kostnader ska fördelas. Genom avtal dokumenterar parterna att man är överens om att följa federationens regler och utifrån dessa lita på information som andra organisationer förmedlar om sina användare. Ibland förekommer också någon form av granskning och det kan finnas möjlighet att begära skadestånd om en skada uppstår på grund av att dessa regler ej följts.

Tillit mellan parter och deras digitala tjänster etableras vanligtvis genom något någon form av *tillitsmodell*.

