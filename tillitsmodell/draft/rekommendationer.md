# Rekommendationer och vägledning för [TARGET_GROUP]
*Praktiskt stöd för implementering och efterlevnad av det Tillitsramverket.*
*[TARGET_GROUP] kan exempelvis vara Kommuner*
*Under varje avsnitt ska det i så stor utsträkning som det går indikera/peka ut det avsnitt i tillitsramverket som efterlevndaden avser ge stöd i samt om olika åtgärder krävs utifrån nivåer i tillitsramverket*

## 1. Inledning
Förklarar syftet med rekommendationer och vägledningen, hur den ska användas och vilka som är målgruppen för dokumentet.

## 2. Övergripande principer och bästa praxis
- Riktlinjer för riskanpassning och nivåer av kontroll.
- Grundläggande säkerhets- och integritetsprinciper.
- Lagar och regler (dataskyddsförordningen, NIS2, m.m.) - gärna med god exempel på vad man kan göra med referens till avsnitt nedan.
- Ordlista och förklaring av termer och begrepp

## 3. Tolkning av krav och roller
- Mer detaljer om hur respektive roll (e-legitimationsutfärdare, attribututgivare, tjänsteleverantör etc.) uppfyller kraven i ramverket.
- Samverkansformer mellan rollerna (t.ex. när ett api ges åtkomst utifrån förlitande på en tredjepartsintyg som en organisation har utfärdat till en tjänsteproducent eller vad som nu anses lämplig scenario...).

## 4. Införande av ledningssystem (LIS)
- Metodstöd (t.ex. ISO/IEC 27001).
- Checklista för att införa, revidera och dokumentera ett LIS.
- Hur man redovisar uppfyllelse av krav.

## 5. Rutiner för fysisk, administrativ och personrelaterad säkerhet
- Exempel på behörighetsstyrning i datacenter eller motsvarande lokaler.
- Bakgrundskontroll av personal, åtkomstbegränsningar m.m.
- Rekommendationer kring gallringsfrister för känsliga data (t ex hantering av skyddade personuppgifter och specialfall).
- Processer för livscykelhantering av användare och systemanvändare (saker)
- Hantering av sårbarheter (t.ex. regelbundna penetrations- och säkerhetstester).
- osv.

## 6. Digital identitet - administration och policy
- "Kontohantering" (t ex "elev- och personalkonto" eller när olämpligt, så kallad "tillfällig behörighet")
    - Finns det policy som redan i registreringsfasen separerar identiteter? (t ex om en person har både beställande och godkännande behörigheter i en ekonomiprocess eller är både politiker och tjänsteman eller är både elev och lärare, etc.)
    - Hur definieras och hanteras administratör eller extra höga behörigheter?
    - Vilka digitala identiteter administreras av egna organisationer vs de som administreras privat, t ex medborgare som loggar in med e-legiitmation och får så kallad "tillfällig behörighet"
- Råd om kryptografiska algoritmer, nyckelhantering, loggning/spårbarhet.
- Praktiska lösningar för olika tillitsnivåer (ex. distansidentifiering med e-legitimation, fysisk ID-kontroll - för en kommun kan det inbegripa mer än medarbetare, utan också elever från låga åldrar till komvux).
- Hantering av skyddade personuppgifter och specialfall.
- Att blir utgivare - vad innebär det?
- Att anskaffa e-legitimationer - vad innebär det?
- Praktiska lösningar och standarder för hantering av identiteter om saker och systemanvändare


## 7. Provisionering
- Provisioneringsförmåga och varför?
- Hur roller och rättigheter definieras och tilldelas?
- Vilka behörigheter hanteras genom integration av processer (t ex roll som skapas från ett HR-system eller roll som skapas utifrån en manuell beställning, etc.)
- Interna (onprem, moln, hybrid) och externa (hos annan organisation) källor/målsystem
- Tips om lämpliga protokoll (t ex SCIM, LDAP, Egil, EPP, osv.) - när använda vilken?
- Tips om verksamhetsnära frågor, t ex attributprofil för skolan, vården, m.m.
- Tips om provisionering av systemanvändre och andra saker (uppkopplade prylar, etc.)

## 8. Säker åtkomst
- Tekniska mekanismer för identifiering, t ex lösenordspolicy, flerfaktorsautentisering, tjänstelegitimation?
- Tekniska mekanismer för åtkomstbeslut, t ex SP, auktorisationstjänster, SSO-lösningar, etc.?
-	Fysiska och logiska säkerhetsåtgärder, såsom inpassering med passerkort, tidstyrd inlåsning eller ”lock screen”-policys, m.m.
- Utgivning och konsumtion av identitetsintyg
   - Råd om standarder (SAML, OIDC) och hur man validerar signerade intyg för säker identitetskontroll (e-legitimering av användare).
   - Svenska e-legitimationer
   - eIDAS
   - Hur man kontrollerar attribut, tillitsnivå och certifikatkedjor (användarinloggning).
- Utgivning och konsumtion av åtkomstintyg
   - Intyg från användarorganisationer
   - Intyg från betrodda ombud (eller vad vi nu kallar dem...)
   - Förhållande identietsintyg från direkt e-legitimering och åtkomstintyg utställd av annan organisation
   - Tips om säkra protokoll för att inhämta åtkomstintyg dynamiskt på begäran (OAuth)
   - Råd om standarder (SAML, OIDC) och hur man validerar signerade intyg (användare respektive systemanvändare).
   - Hur man kontrollerar attribut, "tillitsnivå" och certifikatkedjor (användare respektive systemanvändare).

## 9. Uppföljningsrutiner
- Mallar och checklistor för regelbundna uppföljningar och internrevisioner.
- Hur ofta användares behörigheter granskas (till exempel kontinuerligt genom automatiserade processer eller manuellt kvartalsvis, genom att chefer eller systemägare får listor över sina medarbetares behörigheter att bekräfta, med mera)
-	Logghantering, övervakning, granskning och auto-larm?
-	Särskilda rutiner för regelbundna granskning av privilegierade behörigheter?

## 10. Spärrfunktioner och avslut
- Checklista för spärrförfarande och informering av användare.
-	Hur snabbt stängs konton ner för personer som slutar?
-	Hur justeras behörigheter när en anställd byter tjänst?
-	När tillämpas borttagning, pseudonymisering respektive anonymisering?
-	Etc.

## 11. Loggning, spårbarhet och uppföljning
- Vilka händelser loggas? Var loggas de? Hur skyddas loggarna?
-	Hur kan man följa upp vem som gjort vad och när, och kunna rapportera avvikelser eller misstänkt beteende?
-	Hur ofta göra riskanalyser? Hur följs de upp?
-	Etc.

## 12. Riskhantering och kvalitetssäkring
-	Finns det ett ledningssystem för informationssäkerhetsarbete i det specifika omfånget?
- Rekommendationer förberedelse för extern granskning (t ex tillitsmärken).
- Hur man hanterar avvikelser och genomför korrigerande åtgärder.

## 13. Incidenthantering och kontinuitetsplanering
- Steg för att skapa och öva incidenthanteringsplaner.
- Hur man rapporterar incidenter till andra berörda organisationer.
- Återställning av verksamhet (disaster recovery).

## 14. Personuppgiftshantering och integritetsaspekter
- Exempel på hur man uppfyller GDPR i praktiken.
- Tydliga användarvillkor, privacy by design, protokoll för samtycke.

## 15. Exempel, mallar och stöddokument
- Referenser till nationella och internationella ramverk.
- Referenser till avtal, SLA:er, policydokument, etc. för ENA.
- Mallar eller referenser för riskanalyser, etc.
- Rekommendationer på säker inloggning och SSO i digitala enheter (inkl. mobila device)
- Rekommendationer på sammanhållen distribution av säker åtkomst till e-tjänster och andra onlineresurser 
- Rekommendationer på säker hantering av previligerade  
- Kontaktinformation för support eller frågor.

