<p><img align="right" src="../images/Ena-logo.png" width="25%" Height="25%"></img></p>
<p>&nbsp;</p>

:arrow_backward: [Tillbaka](README.md)

<sup>Senaste uppdatering: 12 juni 2024</sup>

---------

# Termer och begrepp 
Definitionerna nedan är specifikt anpassade för att förklara användningen av termer och begrepp inom området identitets- och behörighetshantering med fokus på Sveriges digitala infrastruktur (ENA).

| Term  | Beskrivning | Kommentar |
| :------------- | :------------- | :------------- |
| <a name="anvandare"></a> användare | En människa som in,teragerar med en digital tjänst via dess grafiska eller fysiska användargränssnitt. En användare kan företräda sig själv eller någon annan fysisk eller juridisk person. | Se även *[systemanvändare](#systemanvandare)* |
| <a name="anvisningstjanst"></a> anvisningstjänst | Ingår vanligtvis som funktion i en digital tjänst hos förlitande part och stödjer användaren i valet av *[intygsfunktion](#intygsfunktion)*. |   |
| <a name="attribut"></a> attribut | Identitets- och behörighetsgrundande information om ett subjekt (människa eller maskin) enligt en förutbestämd struktur, format och uppsättning regler. |   |
| <a name="attributkalla"></a> attributkälla | En katalog eller ett register som innehåller identitets- och/eller behörighetsgrundande information. Den används bland annat vid identitets- och behörighetskontroll, utfärdande av intyg, med mera. |   |
| <a name="attributprofil"></a> attributprofil | En samling av *[attribut](#attribut)* för att specificera identitets- och/eller behörighetsgrundande information i ett specifikt sammanhang. |    |
| auktorisation | Se *[åtkomstbeslut](#atkomstbeslut)*. | Engelska: *authorization* |
| auktorisationstjänst | Se *[åtkomstintygstjänst](#atkomstintygstjanst)*. | Engelska: *authorization server* |
| <a name="autentisering"></a> autentisering | En process för identifiering och validering av ett subjekt (människa eller maskin). | Engelska: *authentication* |
| <a name="autentiseringstjanst"></a> autentiseringstjänst | En infrastrukturkomponent som används för att fastställa ett subjekts identitet (människa eller maskin) vid åtkomst till en digital tjänst. |   | 
| <a name="claims"></a> claims | I engelsk litteratur används *Claims* som ett begrepp för attributlista eller bärare av *[attribut](#attribut)*. |   | 
| <a name="elegitimation"></a> e-legitimation | En id-handling som kan användas för elektronisk legitimering av en användares identitet. | Se även *[Svensk e-legitimation](#svenskelegitimation)*. |
| <a name="elegitimering"></a> e-legitimering | En process när innehavaren av en *[e-legitimation](#elegitimation)* styrker sin identitet genom att använda den vid en *[identitetskontroll](#identitetskontroll)*. E-legitimering är en form av autentisering. |   |
| e-legitimeringstjänst | Se *legitimeringstjänst*. |  |
| <a name="etjanst"></a> e-tjänst | En digital tjänst som tillhandahålls med ett grafiskt användargränssnitt. E-tjänster kan vara utformade för både individer och organisationer och omfattar ett brett spektrum av funktioner, från enkla webbformulär till avancerade interaktiva tjänster. E-tjänster kan delas in i offentliga e-tjänster (till exempel deklarera skatt, ansöka om bygglov eller boka läkartid) och kommersiella e-tjänster (till exempel internetbank, e-handel, bok-, film- och musiktjänster). |   |
| <a name="etjanstelegitimation"></a> e-tjänstelegitimation | En typ av *e-legitimation* som är personlig, men anskaffas av arbetsgivaren för att knyta användaren till en organisation. Syftet är användning av e-legitimation i tjänsten. |  |
| <a name="eidas"></a> eIDAS | EU-förordningen *eIDAS* fastställer en gemensam ram för säker elektronisk identifiering och betrodda tjänster. Den reglerar bland annat erkännandet av nationella elektroniska identiteter och hur e-legitimationer kan användas över landsgränserna. | *eIDAS* är en förkortning av *Electronic Identification, Authentication and Trust Services*.  | 
| <a name="eidasnod"></a> eIDAS-nod | En förbindelsepunkt för anslutning av ett medlemslands e-legitimeringssystem. Den fungerar som en brygga för gränsöverskridande interoperabilitet. Medlemsländernas eIDAS-noder sammankopplar nationella elektroniska identiteter (e-legitimationer) med digitala tjänster i Europa. | Myndigheten för digital förvaltning (Digg) ansvarar för den svenska eIDAS-noden. |
| <a name="federation"></a> federation | Ett antal aktörer som i överenskommen samverkan delar information i ett gemensamt syfte med hjälp av gemensamt definierade regler för informationsutbytet både avseende teknik, semantik, tillit, legala tolkningar, et cetera. | Se även en [utförligare beskrivning](federationer.md). | 
| <a name="federationsansvarig"></a> federationsansvarig | Den aktör som ansvarar och koordinerar för federationens övergripande struktur, regler och villkor. Federationsansvarig agerar *tillitsankare* samt godkänner *[federationer](#federation)*, *[federationsoperatörer](#federationsoperatorer)* och anslutning av *[utfärdare av tillitsmärken](#utfardaretillitsmarke)*. |  | 
| <a name="federationsoperator"></a> federationsoperatör | En betrodd aktör som utifrån delegering av *[federationsansvarig](#federationsansvarig)* hanterar registrering av aktörer och deras digitala tjänster. |  | 
| <a name="forlitandepart"></a> förlitande part |  Den federationspart som ansvarar för att skydda en eller flera digitala tjänster mot obehörig åtkomst. En förlitande part fattar beslut om åtkomst genom att förlita sig på identitets- och behörighetsgrundande information från en betrodd part, till exempel en *[auktorisationstjänst](#auktorisationstjanst)* eller *[identitetsintygstjänst](#identitetsintygstjanst)*. | Engelska: *relying party (RP)* | 
| identifikation | Se *identifiering*. |   |
| <a name="identitet"></a> identitet | En registrerad koppling som gjorts mellan ett subjekt (människa eller maskin) och en unik identifierare i ett identifieringssystem. Identifieringssystemet kan vara lokalt, nationellt eller globalt. |   |
| <a name="identifiering"></a> identifiering | Process för fastställande av *identitet*. Syftet med identifiering är att kunna säkerställa entydiga och exakta hänvisningar till ett subjekt (människa eller maskin).  |   |
| <a name="identitetsbeteckning"></a> identitetsbeteckning | En unik identifierare för användaridentifiering, som kan spåras till ett identifierat subjekt (människa eller maskin). Formatet regleras i ett identifieringssystem. *Utfärdare av e-legitimation* (eller motsvarande) ska alltid kunna bekräfta kopplingen mellan en identitetsbeteckning och subjektets faktiska identitet (till exempel ett personnummer), även när identitetsbeteckningen inte är igenkännbar för en *[förlitande part](#forlitandepart)*. | E-legitimering i tjänsten är exempel på användningsfall där identitetsbeteckning inte behöver vara igenkännbar för en förlitande part, som kan identifiera användaren med en tjänstebeteckning kopplad till ett organisationsnummer. | 
| <a name="identitetsbevis"></a> identitetsbevis | Ett bevis på att subjekt (människa eller maskin) är unikt kopplad till en specifik *[identitet](#identitet)*. Identitetsbeviset behöver vara verifierbart så att en kontrollant kan avgöra handlingens äkthet. |  |
| <a name="identitetsintyg"></a> identitetsintyg | Ett digitalt verifierbart intyg som kan användas som identitetsbevis vid *[inloggning](#inloggning)* till digitala tjänster. Det utfärdas till den mottagare, även kallad *[förlitande part](#forlitandepart)*, som har beställt identitetskontrollen från en betrodd leverantör av identitetsintyg. | I vissa tillämpningar kan ett identitetsintyg även inkludera behörighetsinformation och andra uppgifter om den identifierade användaren. |
| identitetsintygstjänst |  En digital tjänst som ställer ut ett signerat *identitetsintyg* som föregås av en tillförlitlig identifiering av användaren. | Engelska: *Identity Provider (IdP)*, även kallad *OpenID Provider (OP)*  | 
| identitetskontroll | En verifiering som myndighet gör med hjälp av ett *identitetsbevis* i varje enskilt förvaltningsärende för att bedöma om det är angiven individ som kontaktar myndigheten. |  |
| identitetsmatchning | En process där uppgifter för användaridentifiering matchas mot eller länkas till en befintlig identitetsbeteckning som tillhör samma användare. | Engelska: *identity matching*. Regleras bland annat i nya revisionen av eIDAS för gränsöverskriande e-legitimering mellan medlemsländer. | 
| indirekt legitimering | Förmedling av identitetsintyg via en tredje part som beställer e-legitimeringen på uppdrag av en förlitande part. Intyget som ställs ut av e-legitimationsutfärdaren kan konverteras och anpassas vid förmedlingen genom ett nytt intyg. |  | 
| inloggning | En process för åtkomstsbeslut till en digital tjänst. Den involverar i regel identifiering av subjekt (människa eller maskin) genom autentisering och behörighetskontroll genom auktorisation.|  |
| <a name="innehavaretillitsmarke"></a> innehavare av tillitsmärke | Den aktör som har erhållit ett tillitsmärke. | Se även *[ägare av tillitsmärke](#agaretillitsmarke)*. |  |
| <a name="interfederation"></a> interfederation | Samverkan mellan urval av aktörer från olika *[federationer](#federation)* utifrån en gemensam överenskommelse med berörda federationsoperatörer. |  |
| intermediär operatör | En aktör som på uppdrag från en *federationsoperatör* hanterar registrering av digitala tjänster, vanligtvis för en organisation. | | 
| intygsfunktion | teknisk komponent som ställer ut ett intyg i en *identitetsintygstjänst* eller *åtkomstintygstjänst*. | |
| intygsväxling |  |  |
| grundidentifiering | En verifiering som *utfärdare av e-legitimation* gör enligt ett tillitsramverk när en e-legitimation ska utfärdas.  | Regleras bland annat i *eIDAS-förordningen* och EU-kommissionens tillämpningsföreskrifter. |
| legitimeringstjänst | En *identitetsintygstjänst* som är granskad och godkänd enligt ett tillitsramverk för utställande av ett betrodd *identitetsintyg* som föregås av en tillförlitlig *e-legitimering*. |  | 
| leverantör av e-legitimation  | Se *utfärdare av e-legitimation*. |  |
| leverantör av e-legitimeringstjänst | Aktör som identifierar användaren i enlighet med kraven i *tillitsramverk för Svensk e-legitimation*. Identifiering sker alltid med en godkänd *e-legitimation* och genom direkt e-legitimering. Det innebär att intyget levereras genom en kvalificerad tillitskedja från den part som utfärdar e-legitimationen till den part som har beställt identifieringen, det vill säga *förlitande part*. |  |
| leverantör av formaliserade attribut | En aktör som ansvarar för värdemängder i en katalog eller ett register med utgångspunkt i någon form av förordning, instruktion, regleringsbrev eller officiellt uppdrag. | Skatteveret är exempel på en aktör som besitter denna roll för svenska folkbokföringsuppgifter. |
| slutanvändarorganisation | Aktör som ansvarar för sin användares identitets- och behörighetsinformation. Uppgifter verifieras vid användarens inloggning och förmedlas genom ett signerat intyg till *förlitande part*. |  | 
| svensk e-legitimation | En *e-legitimation* som är granskad och godkänd enligt *tillitsramverk för Svensk e-legitimation*. |  |
| <a name="systemanvandare"></a> systemanvändare | API eller andra typer av subjekt som interagerar med en digital tjänst via dess maskinläsbara programgränssnitt, till exempel ett API eller annan form av system till systemgränssnitt. |  |
| tillitsnivå för e-legitimering | Ett mått på e-legitimationens tillförlitlighetsgrad baserat på teknisk och administrativ säkerhet samt noggranhet i utfärdarens förmåga att korrekt utföra *grundidentifiering* samt säkerställa att rätt person hämtar ut sin *e-legitimation*. |  De tillitsnivåer som definieras i *eIDAS-förordningen* är "låg", "väsentlig" och "hög", vilket i princip motsvarar nivåerna 2, 3 och 4 enligt *tillitsramverket för Svensk e-legitimation*. |
| tillitsramverk |  |  |
| tillitsramverk för Svensk e-legitimation | Tillitsramverket som definierar gemensamma krav för utfärdare av e-legitimation och e-legitimeringstjänster, vilka granskas och godkänns av Myndigheten för digital förvaltning (Digg).  |  |
| utfärdare av e-legitimation | Aktör som i enlighet med kraven i ett tillitsramverk förser användaren med en *e-legitimation* och tillhandahåller stödfunktioner för att användaren ska kunna bruka e-legitimationen för att legitimera sig. |  |
| utfärdare av tillitsmärke |  | Engelska: *Trust Mark Issuer* | 
| tillitsmärke |  | Engelska: *Trust Mark* | 
| tjänstekonsument | Organisation som har behov av att nyttja en digital tjänst. | Engelska: *Public Service Consumer* (från EIRA) |
| tjänsteproducent | Organisation som erbjuder en digital tjänst till andra *tjänstekonsumenter*. | Engelska: *Public Service Producer* (från EIRA) |
|  ursprunglig identitetskontroll |  Den granskning som identitetskontrollerande myndighet gör enligt lag när exempelvis en identitetsbeteckning ska registreras i ett befolkningsregister. |   |  
| åtkomstbeslut | En teknisk process för beslut om åtkomst till information eller digital tjänst. Det kan fattas genom en sammanvägd bedömning av identitets- och behörighetskontroll samt andra faktorer, till exempel policyer som ger tillstånd utifrån plats/miljö och användningssituation. | Även kallad *auktorisation*. |
| åtkomstintygstjänst | En infrastrukturkomponent som används för att fastställa användares behörighet vid åtkomst till information eller digital tjänst. Tjänsten inkluderar en *intygsfunktion* som stöttar delegering av behörighetskontroll, i regel utifrån en samling av attribut och/eller ett omfång (engelska: *scope*).| Även kallad *auktorisationstjänst*. |
| <a name="agaretillitsmarke"></a> Ägare av tillitsmärke | Den aktör som äger och ansvarar för utgivning av en eller flera tillitsmärken. | Engelska: *Trust Mark Owner* | 
