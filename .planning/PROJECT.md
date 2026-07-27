# PROJECT — Morfeus Marketing KB

**Avviato:** 2026-07-27
**Owner:** Matt
**Metodo:** GSD-light (logica a checkbox, file markdown puri, niente comandi /gsd-* in Cowork)

## Obiettivo

Costruire un plugin Claude che, da **qualsiasi situazione di partenza**, produce la
**knowledge base di marketing completa e omnicomprensiva** di un brand: lo strato
strategico evergreen (i documenti che oggi il launcher crea nella fase strategia,
piu i documenti mancanti per renderla davvero completa), tramite un motore di
**assessment** (fotografa → misura → chiede il mancante → integra).

## Origine (perche esiste)

Dal confronto con Gaggio (call 2026-07-27): il framework da testare non deve
partire da "come fare un funnel", ma da "come fare una KB perfetta". La KB e il
prodotto primario; il lancio ne e un consumatore. Il launcher resta verticale sui
lanci e intoccato; questo plugin e la base.

## Definition of Done del ciclo (v1)

- **D-1 · La casa della KB.** Catalogo dei nodi che compongono una KB completa
  (strato strategico riusato dal launcher via schema condiviso + nodi nuovi:
  brand core, big idea, message house, portfolio+value ladder, GTM/canali,
  lifecycle, proof bank), ognuno con DoD "KB perfetta".
- **D-2 · Il motore di assessment.** Spina a 8 passi (situation scan → inventory →
  scoring → gap report → elicitazione → produzione → integrazione → KB living
  state) come skill orchestratrice + skill di supporto.
- **D-3 · Le skill dei nodi.** Skill native per i nodi nuovi; aggancio/riuso delle
  strategiche esistenti come output evergreen.
- **D-4 · KB living state.** Formato della KB persistente/versionata (`.morfeus-kb/`)
  e contratto di lettura per il launcher (il passo-2 di convergenza).
- **Test.** Matt/Gaggio testano il builder su un brand reale (F-test, post-v1);
  il feedback rientra come fix. Stato onesto fino ad allora: spec-complete,
  runtime non validato.

## Anti-goal (cosa NON facciamo)

- NON tocchiamo il launcher (nessun file). La convergenza e un ciclo successivo.
- NON ricostruiamo da zero lo strato strategico gia esistente: lo riusiamo via
  schema condiviso, ri-inquadrato come evergreen.
- NON costruiamo la piattaforma/brain: la KB living state e filesystem-first;
  l'eventuale piattaforma e fuori da questo ciclo.
- NON mischiamo questa `.planning/` (lavoro sul sistema) col runtime (`.morfeus-kb/`).

## Regola anti-incartamento

Un solo livello di pianificazione: `.planning/` traccia il lavoro sul sistema.
`ROADMAP.md` e la fonte unica dello stato; ogni fase ha un solo `PLAN.md` a checkbox.
