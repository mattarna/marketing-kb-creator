---
name: kb-d2
description: "Produce il documento KB evergreen Design system (nodo D2) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo D2 del plugin morfeus-marketing-kb."
---

# Skill · KB D2 Design system

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/D2.yaml`,
   e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:D3.output` (brand identity brief: la direzione che qui si formalizza)
   - `existing_material` (design system, token, asset o brand kit esistenti del brand)
   - `human_input` (vincoli: piattaforme, dark/light richiesto)
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Produzione

Craft, in ordine:

1. **Path.** Caricare l'esistente O creare da zero: la decisione va dichiarata
   in testa al documento. Se esistente: importa, valida la completezza contro
   le ossa del nodo e DICHIARA ogni conflitto col brand esistente (un
   conflitto taciuto e un trigger di rifiuto).
2. **Palette con ruoli.** Ogni colore ha un RUOLO (primario, secondario,
   accent, neutri, semantici): un colore senza ruolo e decorazione, non
   sistema. Deriva le scelte da D3, includi dark/light se previsto.
3. **Font con gerarchia.** Display, heading, body: famiglie, pesi, scale.
   La gerarchia serve la lettura, non la varieta: due famiglie bastano quasi
   sempre, la terza va giustificata.
4. **Stile visivo.** Minimal, bold, elegante, raw: nominato e tradotto in
   conseguenze operative (densita, contrasti, raggi, ombre), non lasciato
   come aggettivo.
5. **Spacing e layout.** Scala di spacing, larghezze massime, griglie: le
   regole che rendono due pagine fatte da mani diverse riconoscibili come
   sorelle.
6. **Componenti base.** Bottoni, card, sezioni, badge, form: per ciascuno gli
   stati (default, hover, disabled) e le regole d'uso.
7. **Regole d'uso.** Cosa si fa e cosa NON si fa: contrasto minimo,
   leggibilita, combinazioni vietate. Un design system senza regole e una
   palette, non un sistema.
8. **Generazione.** Documento markdown di riferimento + token CSS + reference
   HTML che mette a terra il sistema (e l'evidence richiesta dal nodo).
9. **Coerenza D1.** Il sistema visivo dice la stessa cosa del tono di voce?
   Un tono diretto e crudo con un visual barocco e una contraddizione da
   risolvere, non da annotare.

Vincoli trasversali: deriva da D3 senza contraddirlo; niente asset o
riferimenti inventati; l'output cita D3, `existing_material` e `human_input`
come fonti. La completezza delle regole si valida qui; l'estetica vera si
valida su una pagina di riferimento reale a valle.

## 2. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] Colori senza ruolo assegnato? → RIFIUTO.
- [ ] Path "carico esistente" con conflitti col brand non dichiarati? → RIFIUTO.
- [ ] Nessuna regola di contrasto/leggibilita? → RIFIUTO.
- [ ] Moodboard con colori belli ma senza regole? → non e un sistema, completa.
- [ ] Bar del nodo: con il solo documento, un terzo produce una pagina
      on-brand senza farti una domanda? Se no → le regole non bastano.
Se anche uno scatta: correggi PRIMA di consegnare.

## 3. Consegna

- Output: documento design system (markdown reference + token CSS) + reference
  HTML che lo mette a terra.
- Evidence bundle: il reference HTML + la dichiarazione conflitti (se path
  esistente, anche vuota: vuoto dichiarato, non omesso).
- Il documento e un asset permanente della KB del brand (nodo D2): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
  Alimenta pagine e creativita a valle; l'estetica si ri-valida poi su una
  pagina reale.
