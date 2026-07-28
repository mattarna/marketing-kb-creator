# Morfeus Marketing KB

**Il costruttore della knowledge base di marketing completa, impacchettato come plugin Claude.**

Owner: Matteo @ Morfeus Hub
Status: F0 · scaffold in corso (2026-07) · vedi `.planning/ROADMAP.md`
Version: 0.1.0

> **Sessioni AI: leggere `CLAUDE.md` prima di qualsiasi azione in questo repo.**

---

## Cos'e

Un plugin Claude che, partendo da **qualsiasi situazione** (da zero, materiale
sparso, business avviato), costruisce la **knowledge base di marketing completa e
omnicomprensiva** di un brand: tutti i documenti strategici evergreen da cui poi
i lanci pescano.

Non e un builder di funnel. Il suo obiettivo primario e la KB migliore possibile.
Il funnel viene dopo, ed e un consumatore della KB, non il suo scopo.

## Il perno (vs il launcher)

Esiste gia un plugin gemello, `morfeus-marketing-launcher`, **verticale sui lanci**
e intoccato. Questo plugin e la **base**: produce lo strato strategico una volta,
in forma evergreen. La freccia e girata: la KB e la fonte di verita persistente
di un business, i lanci sono viste sopra di essa.

```
KB (questo plugin, la base)  ──alimenta──▶  LANCIO (launcher, il verticale)
```

- **Schema del catalogo condiviso** col launcher (codici B/C/D, schema DoD): e il
  ponte per convergere in futuro senza merge doloroso. Non si forka.
- **Convergenza pianificata (passo 2, post-validazione):** il launcher smettera di
  ri-produrre lo strato strategico e lo leggera da qui. Fino ad allora: launcher
  intoccato, eventuale duplicazione temporanea e dichiarata.

## I due pezzi del plugin

1. **Il motore di assessment (la spina nuova).** Situation scan → inventory →
   scoring di completezza → gap report → elicitazione mirata → produzione →
   integrazione/coerenza → KB living state.
2. **La casa della KB (il target).** I nodi che compongono una KB perfetta:
   fondamenta (brand core, big idea, voce, identita visiva), mercato (ICP, avatar,
   sofisticazione, competitor, VoC), strategia (meccanismo, angoli/halo, message
   house), offerta (portfolio + value ladder), go-to-market (canali/content,
   lifecycle, pattern funnel), asset (proof bank, numeri).

## Autonomo (self-contained)

Il plugin **produce ogni nodo da solo**: 25 skill native (motore + 24 producer),
zero dipendenze runtime da altri plugin. I metodi vengono dal launcher e dal plugin
marketing, ma sono stati **adattati e portati dentro** come documenti KB evergreen.
Installi solo `marketing-kb-creator` e funziona tutto. Il launcher e la cava del
metodo, non un requisito.

## Struttura (target)

```
morfeus-marketing-kb/
├── CLAUDE.md                  ← contratto per sessioni AI (LEGGERE PRIMA)
├── .claude-plugin/            ← manifest + marketplace
├── .planning/                 ← roadmap e piani del ciclo corrente (fonte dello stato)
├── catalog/                   ← DOMINIO: schema + nodi della casa KB + viste
├── skills/                    ← skill native (assessment + nodi strategici + doc nuovi)
├── config/                    ← skills-map
├── scripts/                   ← validate-catalog e strumenti
└── docs/                      ← architettura + adr + note
```

## Stato del ciclo

Vedi `.planning/ROADMAP.md` (fonte unica dello stato).
