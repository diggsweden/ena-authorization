# Tillitsmodell

- Olika tillitsregelverk behövs för olika delar av federationen:
  - Organisations-/medlemstillit
  - tillit e-tjänst
  - tillit attributshantering (katalogtillit)
  - tillit autentiseringstjänst/identifierings-och attributstjänst/regelverkstjänst/intygstjänst/IdP
  - tillit agent/ombud
  - tillit e-legitimationsutfärdare 
- Alla olika tillitsregelverk delas upp i tillitsnivåer; ev. behövs flexibilitet på enskild kravnivå för att slippa "domän"-specifika underfederationer.
- Stark verifiering av kravuppfyllnad krävs för höga tillitsnivåer.
- Endast attributsgrupper bör vara domänspecifika. :+1:

### Medlemstillit

Exempel på krav för tillit mellan medlemmar i en federation:

- Medlem som inte är ett offentligt organ ska drivas som registrerat bolag samt teckna och vidmakthålla för verksamheten erforderliga försäkringar.
- Medlem ska ha en etablerad verksamhet, vara fullt operationell och vara väl insatt i de juridiska krav och informationssäkerhetskrav som ställs på denne som medlem i Ena-federationen.
- Medlem ska förfoga över tillräckliga ekonomiska medel för att kunna bedriva verksamheten i minst 1 år och bära risken för skadeståndsskyldighet.
- Medlem ska för de delar av verksamheten som berörs av tillitsramverket ha ett ledningssystem för informationssäkerhet (LIS) som i tillämpliga delar baseras på SS ISO/IEC 27001 eller motsvarande erkända och vedertagna standarder, omfattande bl.a. organisation, resurstilldelning samt tekniska respektive administrativa säkerhetsåtgärder, och utgöra en kvalitetsprocess som kontinuerligt utvärderar och anpassar verksamheten till aktuella omvärldskrav. 
  - Ledningssystemet för informationssäkerhet och efterlevnaden av de krav som ställs på Medlem ska årligen vara föremål för internrevision, utförd av oberoende intern kontrollfunktion, såvida inte organisationens storlek eller annan försvarbar orsak motiverar annat.
  - Ledningssystemet för informationssäkerhet ska följa SS-ISO/IEC 27001:2006, och inom avgränsningen för detta inkludera samtliga relevanta krav.
- Medlem ska regelbundet utvärdera informationssäkerhetsskyddet och införa förbättringsåtgärder i ledningssystemet och säkerhetskontroller.
- Samtliga säkerhetskritiska administrativa och tekniska processer ska dokumenteras och vila på en formell grund, där roller, ansvar och befogenheter finns tydligt definierade. 
- Medlem ska säkerställa att denne vid var tid har tillräckliga personella resurser till förfogande för att uppfylla sina åtaganden.
- Medlem ska inrätta en process för riskhantering som på ett ändamålsenligt sätt, kontinuerligt eller minst var X månad, analyserar hot och sårbarheter i verksamheten, och som genom införande av säkerhetsåtgärder balanserar riskerna till acceptabla nivåer. 
- Medlem ha dokumenterade processer för incidenthantering som systematiskt säkerställer kvaliteten i tjänsten, former för vidarerapportering och att lämpliga reaktiva och preventiva åtgärder vidtas för att lindra eller förhindra skada vid händelser som lett till eller kunnat leda till en incident.
- Medlem ha upprättad och testad kontinuitetsplan som tillgodoser verksamhetens tillgänglighetskrav genom en förmåga att återställa kritiska processer vid händelse av katastrof eller allvarliga incidenter.
- En medlem som på annan part har lagt ut utförandet av en eller flera säkerhetskritiska processer, ska genom avtal definiera vilka kritiska processer som underleverantören är ansvarig för och vilka krav som är tillämpliga på dessa, samt tydliggöra avtalsförhållandet i tillitsdeklarationen.

### Tillit E-tjänst

Exempel på krav för tillit för en E-tjänst i federationen:

### Tillitskrav

<table>
  <tr>
    <th colspan="4" style="text-align: center; background-color: #f2f2f2;">Tillitskrav Auktorisationstjänst</th>
  </tr>
  <tr>
    <th colspan="4" style="text-align: center; background-color: #e2e2e2;"></th>
  </tr>
  <tr>
    <th style="text-align: center;">Krav-kod</th>
    <th style="text-align: center;">Beskrivning</th>
    <th style="text-align: center;">Kravnivå</th>
    <th style="text-align: center;">Kravtyp</th>
  </tr>
  <tr>
    <td style="text-align: center;">Krav F.1</td>
    <td style="text-align: center;">Betrodd Part som tillhandahåller tjänst för utgivning av intyg för auktorisation ska se<br>till att denna tjänst har god tillgänglighet och att utlämnande av<br>intyg föregås av en tillförlitlig kontroll av att den anslutande<br>användarens/tjänstens elektroniska identitet och attribut är giltiga och korrekta.</td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav F.2</td>
    <td style="text-align: center;">Ange ett tillgänglighetsmått för auktorisationstjänsten. Beskriv vilka autentiseringsmetoder<br>som används för att ansluta till intygsutfärdaren<br>för att utfärda intyg. Beskriv hur kontroll av identitetens och<br>attributens giltighet görs, inklusive vilka attributskällor som används.</td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav F.3</td>
    <td style="text-align: center;">Lämnade intyg ska vara giltiga endast så länge som det krävs för att<br>användaren/tjänsten ska få tillgång till den efterfrågade E-tjänsten/resursen.<br>Giltighetstid för intyg ska anges.</td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav F.4</td>
    <td style="text-align: center;">Intyg ska skyddas så att informationen endast är läsbar för den<br>mottagande E-tjänsten och att den kan kontrollera att mottagna intyg är äkta.<br>Krypterings- och signeringsförfarande ska beskrivas.</td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav F.5</td>
    <td style="text-align: center;">Identifierade användares/tjänsters anslutningar mot auktorisationstjänsten ska<br>tidsbegränsas, varefter en ny identifiering av användaren/tjänsten ska ske i enlighet<br>med D.1. Beskriv hur länge<br>autentiseringen mot intygsutfärdaren är giltig innan ny<br>autentisering krävs.</td>
    <td style="text-align: center;">Medel</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav F.6</td>
    <td style="text-align: center;">auktorisationstjänsten ska ha en typdligt utpekad ägare och förvaltning som ansvarar för<br>dokumenterade rutiner som säkerställer att erforderlig skyddsnivå i IT-miljön<br>kan upprätthållas över tid och i samband med förändringar,<br>innefattande regelbundna sårbarhetsundersökningar samt ändamålsenlig beredskap för att möta<br>förändrade risknivåer och inträffade incidenter.</td>
    <td style="text-align: center;">Medel</td>
    <td style="text-align: center;">Organisatoriskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav F.7</td>
    <td style="text-align: center;">Tjänsten ska ha omfattande loggning av autentiseringshändelser, åtkomstförsök och administrativa ändringar.<br>Loggarna ska vara skyddade, sökbara och kunna användas för att snabbt identifiera och utreda säkerhetsincidenter.
</td>
    <td style="text-align: center;">Medel</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav F.8</td>
    <td style="text-align: center;">Det ska finnas processer för att skapa och uppdatera auktorisationsregler på ett kontrollerat sätt.
</td>
    <td style="text-align: center;">Teknisktr</td>
    <td style="text-align: center;">Medel</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav F.9</td>
    <td style="text-align: center;">Placeholder</td>
    <td style="text-align: center;">Placeholder</td>
    <td style="text-align: center;">Placeholder</td>
  </tr>

</table>

<table>
  <tr>
    <th colspan="4" style="text-align: center; background-color: #f2f2f2;">Tillitskrav Federationsmedlem</th>
  </tr>
  <tr>
    <th colspan="4" style="text-align: center; background-color: #e2e2e2;"></th>
  </tr>
  <tr>
    <th style="text-align: center;">Krav-kod</th>
    <th style="text-align: center;">Beskrivning</th>
    <th style="text-align: center;">Kravnivå</th>
    <th style="text-align: center;">Kravtyp</th>
  </tr>
  <tr>
    <td style="text-align: center;">Krav A.1</td>
    <td style="text-align: center;"></td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav A.2</td>
    <td style="text-align: center;"></td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav A.3</td>
    <td style="text-align: center;"></td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav A.4</td>
    <td style="text-align: center;"></td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav A.5</td>
    <td style="text-align: center;"></td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>
  <tr>
    <td style="text-align: center;">Krav A.6</td>
    <td style="text-align: center;"></td>
    <td style="text-align: center;">Hög</td>
    <td style="text-align: center;">Tekniskt</td>
  </tr>

</table>
