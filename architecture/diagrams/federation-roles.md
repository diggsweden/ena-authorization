
# Federationsinfrastruktur

## Tillitskapande federationsroller
* Federationsansvarig - test 
* Federationsoperatör 
* Tillitsmärkesutfärdare
* Ansvarig för tillitsmärke

```mermaid
erDiagram

    fedA["Federationsansvarig"]
    fedO["Federationsoperatör"]
    fedT["Tjänst i federationen"]
    tmu["Tillitsmärkesutfärdare"]
    tma["Ansvarig för tillitsmärke"]
    tm["Tillitsmärke"]
    mo["Medlemsorganisation"]

    fedA }|--|{ fedO : "avtalar med"
    fedA }|--|{ tmu : "avtalar med"
    tma }|--|{ tmu : "utser"
    tma ||--|{ tm : "bestämmer ingående krav i"
    fedO }|--|{ fedT : "ansluter"
    tmu }|--|{ fedT : "ger ut tillitsmärke till"
    tmu  }|--|{ tm : "verifierar uppfyllnad"
    tm }|--|{ fedT : "ges ut till"
    fedT }|--|| mo : "tillhör"

```

## Tillitsmärke

### Alternativ 1 - förenklat
```mermaid

erDiagram
    
    tk["Tillitskrav"]
    tmu["Tillitsmärkesutfärdare"]
    tma["Tillitsmärkesägare"]
    tm["Tillitsmärke"]
    fedT["Tjänst i federation"]
    mo["Medlemsorganisation"]

    tma }|--|{ tk : "samverkar kring"
    tk }|--|{ tm : "ingår i"
    tma ||--|{ tm :"bestämmer krav för" 
    
    tm }|--|{ tmu : "utfärdas av"
    tmu }|--|{ fedT : "verifierar kravuppfyllnad"
    tm }|--|{ mo : "uppfylls av"
    fedT }|--|| tm : "uppfylls av/kräver uppfyllnad av"

    fedT }|--|| mo : "tillhör"

```

### Alternativ 2 - tjänsteproducent/tjänstekonsument

```mermaid

erDiagram
    
    tk["Tillitskrav"]
    tmu["Tillitsmärkesutfärdare"]
    tma["Tillitsmärkesägare"]
    tm["Tillitsmärke"]
    fedK["Tjänstekonsument i federation"]
    fedP["Tjänsteproducent i federation"]
    mo["Medlemsorganisation"]

    tma }|--|{ tk : "samverkar kring"
    tk }|--|{ tm : "ingår i"
    tma ||--|{ tm :"bestämmer krav för" 
    
    tm }|--|{ tmu : "utfärdas av"
    tmu }|--|{ fedK : "verifierar kravuppfyllnad"

    tm }|--|{ mo : "uppfylls av"
    fedP }|--|| tm : "kräver uppfyllad av"
    fedK }|--|| tm : "uppfylls av"
    tmu }|--|{ fedP : "verifierar kravuppfyllnad"
    
    fedP }|--|| mo : "tillhör"
    fedK }|--|| mo : "tillhör"
    
```