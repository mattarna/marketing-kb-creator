# ROADMAP — Morfeus Marketing KB

Una fase per riga. Il dettaglio vive in `phases/<fase>/PLAN.md`.
Fonte unica dello stato. Aggiornata 2026-07-27.

| Fase | Contenuto | Chiude | Stato |
|------|-----------|--------|-------|
| **F0 · Fondamenta** | Scaffold plugin (manifest, marketplace, CLAUDE.md, README, .planning) + schema catalogo KB + aggancio allo schema condiviso col launcher | Forma del prodotto bloccata | [x] |
| **F1 · La casa della KB** | `catalog/nodes/`: definizione di tutti i nodi (strategici riusati + nodi nuovi), con dipendenze e DoD "KB perfetta". La mappa completa del target | D-1 | [x] 21/21 nodi (7 nuovi + 14 aggancio), house map, schema; producer cablati |
| **F2 · Il motore di assessment** | Skill orchestratrice della spina a 8 passi + logica di scoring/gap/elicitazione. Il valore nuovo | D-2 | [~] skill `kb-assessment` scritta; da rifinire con la resa reale |
| **F3 · Le skill dei nodi** | PIVOT 2026-07-27 (decisione Matt): plugin **self-contained** e vendibile da solo. Tutti i producer portati DENTRO come skill native (adattate da launcher+marketing come documenti KB evergreen). Nodi ricablati da `launcher_skill:`/`marketing_skill:` a `skill:kb-*`. Totale ~25 skill | D-3 | [~] nodi ricablati + gap fatti; 20 producer in adattamento (B1-B6 fatti) |
| **F4 · La cartella-KB (prodotto)** | Il sistema DEPOSITA una cartella `<brand>-kb/` reale: `CLAUDE.md` (contratto d'uso per le AI) + `kb-manifest.yaml` (stato macchina-leggibile) + `00_ASSESSMENT/` + una cartella per sezione (FND/MKT/STR/OFR/GTM/AST) con un file per nodo. E l'asset AI-consumabile + la base della convergenza passo-2 | D-4 | [~] template `kb-CLAUDE.md.tpl` + `kb-manifest.yaml.tpl` scritti; da provare con la resa reale |
| **F-test · Validazione** | Matt/Gaggio testano il builder su un brand reale; feedback come fix | Affinamento | [ ] post-v1 |

## Note

- **F0 ora in corso:** scaffold creato; manca schema catalogo + decisione fine sui
  codici dei nodi nuovi.
- **F1 e F3 si sovrappongono:** la casa (F1) definisce i nodi, le skill (F3) li
  riempiono; la factory parte sui nodi gia stabili.
- **F2 e il cuore:** e la spina che il launcher non ha. Priorita alta.
- **Convergenza col launcher (passo-2):** fuori da questa roadmap. Parte solo dopo
  F-test, come ciclo separato, e solo allora si tocca il launcher.
