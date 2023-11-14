```mermaid 
flowchart TB

    direction TB
    MDR1([MDR\nIdentitet])-->LT1_11[LT]
    MDR1-->LT1_12[LT]
    MDR1-->FP1_11[FP]
    MDR1-->DMDR1([DMDR])
    DMDR1-->LT1_2[LT]
    DMDR1-->FP1_2[FP]
    
    MDR2([MDR\nAuktorisation])-->AS2_1[AT]
    MDR2-->RS2_1[RS]
    MDR2-->KL2_1[KL]
    MDR2-->DMDR2([DMDR\nDomän X])    
    DMDR2-->AS2_2[AT]
    DMDR2-->KL2_2[KL]
    DMDR2-->RS2_2[RS]
    AS2_2-->AK2_3[AK]

    MDR1-->AS2_1
    MDR1-->KL2_1
    
```
* MDR - Medatataregistrator
* LT - Legitimeringstjänst
* FP - Förlitande part
* DMDR - Delegerad metadataregistrator
* AT - Auktorisationstjänst
* AK - Attributkälla
* KL - Klient
* RS - Resursserver
