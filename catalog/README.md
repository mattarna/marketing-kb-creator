# Catalogo — La casa della KB

Dominio del plugin: i **nodi** che compongono una knowledge base di marketing
completa. Ogni nodo = un documento della KB, definito in `nodes/<CODE>.yaml`
secondo `schema.yaml`. Questa e la mappa; le definizioni autoritative sono i YAML.

## Sezioni della casa

| Sez | Nome | Cosa raccoglie |
|-----|------|----------------|
| **FND** | Fondamenta | chi siamo / perche esistiamo / come suoniamo e appariamo |
| **MKT** | Mercato | a chi parliamo / dove giochiamo |
| **STR** | Strategia | cosa promettiamo / perche funziona |
| **OFR** | Offerta | cosa vendiamo |
| **GTM** | Go-to-market | come arriviamo / ciclo di vita del cliente |
| **AST** | Asset | prove / numeri |

## I nodi

Legenda stato: **reused** = skill gia nel launcher, qui agganciata/ri-inquadrata evergreen ·
**new** = documento nuovo, skill da scrivere qui.
Relazione col launcher: `same` 1:1 · `generalizes` ingloba il codice launcher · `partial` copre una parte.

Stadio: **core** = ogni business lo serve, sempre valutato · **grows** = ha senso solo a
certi stadi; l'assessment lo marca "non serve ancora", non "mancante".

### FND · Fondamenta
| Code | Documento | launcher_ref | Rel | Stato | Stadio |
|------|-----------|--------------|-----|-------|--------|
| `KB-BRAND-CORE` | Nucleo brand: mission, vision, valori, storia founder, nemico, manifesto/POV | D3 | partial | new | core |
| `D1` | Voce verbale (tono di voce) | D1 | same | reused | core |
| `D2` | Design system / identita visiva | D2 | same | reused | grows |
| `D3` | Brand identity brief (parte visiva) | D3 | same | reused | core |

### MKT · Mercato
| Code | Documento | launcher_ref | Rel | Stato | Stadio |
|------|-----------|--------------|-----|-------|--------|
| `B1` | ICP + posizionamento | B1 | same | reused | core |
| `B2` | Avatar / personas | B2 | same | reused | core |
| `B3` | Sofisticazione di mercato | B3 | same | reused | core |
| `B4` | Competitor / market map | B4 | same | reused | core |
| `B5` | Voice of Customer | B5 | same | reused | core |

### STR · Strategia
| Code | Documento | launcher_ref | Rel | Stato | Stadio |
|------|-----------|--------------|-----|-------|--------|
| `KB-NARRATIVE` | **Narrativa strategica** · un documento, 4 sezioni distinte e citate: Big Idea · Meccanismo Unico · Angoli · Message House (core message + pilastri + proof) | B7, B8 | generalizes | new | core |
| `B6` | Halo strategy (ecosistema di offerte/contenuti attorno al core) | B6 | same | reused | grows |

### OFR · Offerta
| Code | Documento | launcher_ref | Rel | Stato | Stadio |
|------|-----------|--------------|-----|-------|--------|
| `KB-VALUE-LADDER` | Portfolio prodotti + value ladder + architettura pricing | C1 | generalizes | new | grows |
| `C1` | Offer design (singola offerta / gradino della scala) | C1 | same | reused | core |

### GTM · Go-to-market
| Code | Documento | launcher_ref | Rel | Stato | Stadio |
|------|-----------|--------------|-----|-------|--------|
| `KB-CHANNELS` | Strategia canali + content/GTM (owned/earned/paid + pilastri editoriali) | C4 | generalizes | new | core |
| `KB-LIFECYCLE` | Customer lifecycle map: awareness a advocacy | C3 | generalizes | new | grows |
| `C3` | Architettura funnel (pattern riusabile) | C3 | same | reused | grows |
| `C6` | Segmentazione email | C6 | same | reused | grows |
| `C7` | Referral system | C7 | same | reused | grows |
| `C8` | Email architecture map | C8 | same | reused | grows |

### AST · Asset
| Code | Documento | launcher_ref | Rel | Stato | Stadio |
|------|-----------|--------------|-----|-------|--------|
| `KB-PROOF-BANK` | Proof / asset bank: testimonial, case study, dati, credenziali (vivo) | R3 | generalizes | new | core |
| `KB-NUMBERS` | Numeri / unit economics baseline del business | A4 | generalizes | new | core |

## Conteggio

- **Nodi totali:** 21
- **Nuovi (skill da scrivere qui):** 7 · `KB-BRAND-CORE`, `KB-NARRATIVE`, `KB-VALUE-LADDER`,
  `KB-CHANNELS`, `KB-LIFECYCLE`, `KB-PROOF-BANK`, `KB-NUMBERS`
- **Riusati dal launcher (aggancio):** 14 codici · D1, D2, D3, B1, B2, B3, B4, B5, B6, B7, B8,
  C1, C3, C6, C7, C8 (B7 e B8 non sono nodi a se: vivono come sezioni-producer dentro `KB-NARRATIVE`)

## Le due decisioni di impianto (ratificate 2026-07-27)

1. **I nodi-idea stanno insieme, distinti.** Big Idea, Meccanismo Unico, Angoli e
   Message House sono cose diverse ma dello stesso ceppo: vivono in UN documento
   (`KB-NARRATIVE`) come sezioni nominate, non in 4 file che si ripetono e si
   contraddicono. Ognuna puo avere il suo producer (anche una skill del launcher).
2. **Core vs grows.** Non si forza un business a riempire 21 caselle. I nodi `grows`
   l'assessment li marca "non serve ancora" secondo lo stadio, senza segnarli rossi.

## Nota di metodo

Ogni nodo `new` che `generalizes` un codice launcher NON lo sostituisce: lo ingloba a
livello KB (evergreen, omnicomprensivo) e lascia il codice launcher come vista tattica.
La convergenza (il launcher legge questi nodi, la KB e la fonte di verita) e il passo-2,
fuori da questo ciclo, agganciato alla productizzazione.
