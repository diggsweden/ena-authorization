### Datamodell
```mermaid
graph LR
km(<b>Kontrollmekanism</b><br><i>självdeklatation, intern remiss, extern remiss, certifiering</i>)
tmtyp(<b>Tillitsmärkestyp</b><br><i>identitet, attribut, intyg, klient, skyddad resurs)
tm(<b>Tillitsmärke</b>)
tmnivå(<b>Tillitsnivå</b><br><i>låg, väsentlig, hög</i>)
kk(<b>Kravkatalog</b><br><i>organisatoriska, tekniska, administrativa, fysiska</i>)
kr(<b>Kontrollregelverk</b><br><br><i>definierar vilken kontrollmekanism som avkrävs en medlemsorganisation inom en viss organisationskategori för att påvisa efterlevnad av respektive krav)
m(<b>Medlemsorganisation<b>)
mk(<b>Organisationskategori</b><br><i>myndighet, region, kommun, privat aktör</i>)
d(<b>Samverkanskontext</b><br><i>t.ex. journalutbyte, remisser, deklaration, orosanmälan</i>)
m--ansöker om-->tm
m--tillhör-->mk
m--vill delta i-->d--kräver ett eller flera-->tm

tm--är av en viss-->tmtyp
tm--regleras av-->kr-.->mk & km
tm-- omfattar ett urval av krav i-->kk
tm--är förknippad med-->tmnivå


```

## Hypoteser
1.	Krav beskriver en viss förmåga hos en organisation, hos en verksamhet inom en organisation, alternativt hos en teknisk komponent (som ligger under en utpekad organisations eller verksamhets ansvar).
2.	Ett tillitsmärke beskriver att en teknisk komponent, alternativt den verksamhet och/eller organisation uppfyller en uppsättning krav med en viss grad av tillförlitlighet
3.	Vilken kontrollmekanism som krävs för att påvisa en viss grad av tillförlitlighet kan skilja mellan olika krav, eller inom ett krav för olika ansvariga aktör eller vilken typ av aktör det är.
4.	Varje ägare av ett tillitsmärke måste öppet publicera sitt regelverk för vilken kontrollmekanism som krävs, per krav, för vilka aktörer eller typ av aktörer.
5.	Tillitsmärken bör utformas på olika nivåer -förslag:  låg, väsentlig och hög
6.	Livscykelhanteringen av tillitsmärken bör sträva efter att kontinuerligt höja kraven i syfte att driva på en kontinuerligt ökande motståndskraft i det svenska samhället inom områdena informationssäkerhet och cybersäkerhet.

```mermaid
graph LR

%% ---- KRAV ---- %%
ok(Organisatoriskt krav<br>O1, ..., ON)
tk(Tekniskt krav<br>T1, ..., TN)
ak(Administrativt krav<br>A1, ..., AN)
fk(Fysiskt krav<br>F1, ..., FN)
kk[(Kravkatalog)]
ok & tk & ak & fk --finns registrerade i -->kk

%% ---- EFTERLEVNADSKONTROLL ---- %%
elk(Kontrollmekanism)
sr(Självdeklaration<br>S)
ir(intern revision<br>I)
er(extern revision<br>E)
ar(certifiering av ackrediterad part<br>C)
sr & ir & er & ar --är en -->elk

%% ---- AKTÖRER ---- %%
a(Aktör)
m(Statliga myndigheter<br>M)
r(Region<br>R)
k(Kommun<br>K)
p(Privata aktörer<br>P)
m & r & k & p --är en-->a

%% ---- TILLITSMÄRKEN ---- %%
et(Ena tillitsmärken)
eta(Ena Anslutning)
etid(Ena Identitet)
etattr(Ena Attribut)
eti(Ena Intyg)
etc(Ena Klient)
etsr(Ena Skyddad resurs)
tid-hög(Tillitsmärke Identitet HÖG)
tid-väs(Tillitsmärke Identitet VÄSENTLIG)

etid-->tid-bas(Bas) & tid-väs(Väsentlig) & tid-hög(Hög) 
et--delas in i-->eta & etid & etattr & eti & etc &  etsr

tid-bas --Omfattar-->kid-bas(Kravlista:<br>Aktör: krav/kontroll, ...<br><br>M: O1/I, O2/I, O3/S, O4/S, O5/S<br>T1/E, T2/E, T3/E, T4/S<br>F1/I, F2/S<br><br>R, K: O1/E, O2/I, O3/I, O4/S, O5/S<br>T1/C, T2/E, T3/E, T4/S<br>F1/E, F2/S<br><br>P: O1/E, O2/E, O3/I, O4/S, O5/S<br>T1/C, T2/E, T3/E, T4/S<br>F1/E, F2/S<br>)

tid-väs --Omfattar-->kid-väs(Bas<br><br>+<br><br>Kravlista:<br>Aktör: krav/kontroll, ...<br><br>...)

tid-hög --Omfattar-->kid-hög(Väsentlig<br><br>+<br><br>Kravlista:<br>Aktör: krav/kontroll, ...<br><br>...)

elk~~~~et
```

