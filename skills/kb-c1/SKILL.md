---
name: kb-c1
description: "Produce il documento KB evergreen Offer design completo (nodo C1) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo C1 del plugin morfeus-marketing-kb."
---

# Skill · KB C1 Offer design completo

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/C1.yaml`, e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:B2.output` (avatar: le obiezioni che i bonus devono uccidere)
   - `kb:B6.output` (Halo: barriere e obiezioni in prima persona, tabella 3)
   - `kb:KB-NUMBERS.output` (il modello dei numeri: il prezzo deve reggerci)
   - `existing_material` (offerta, listino, garanzie e bonus gia esistenti del brand)
   - `human_input`
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare.

## 1. Calibrazione

Le cinque golden rules, in sintesi operativa:
1. Vendi la vacanza, non l'aereo: si parte dal dream outcome, si costruisce a ritroso.
2. Governa l'equazione del valore: (dream outcome x probabilita percepita) /
   (tempo x sforzo). Ogni elemento muove una leva o e riempitivo.
3. Ogni bonus uccide un'obiezione precisa. Senza "si, ma..." mappato, va tolto.
4. La garanzia inverte il rischio: specifica e audace. Se non ti fa un po' paura,
   non sta invertendo niente.
5. Il prezzo e un messaggio: comunica posizionamento, non convenienza.

## 2. Produzione

Craft, in ordine:

1. **Prodotto core.** Elenco esatto di cosa include. Niente vaghezze: cio che
   il buyer riceve, quando, come.
2. **Value stack.** Per ogni item: nome + cosa fa + quale leva dell'equazione
   muove + valore assegnato DIFENDIBILE (se non sai giustificarlo a voce, e
   inventato). Test dello stack forte: elencato solo il dream outcome, il
   cliente temerebbe un prezzo molto piu alto del reale.
3. **Pricing.** Parti dal prezzo attuale/ipotizzato del brand, verificalo contro
   KB-NUMBERS (regge nel worst case?), scrivi il rationale: perche QUESTO numero.
   "L'ho visto dai competitor" non e un rationale.
4. **Garanzia.** Tipo (rimborso, performance, ibrida), durata, condizioni, COME
   si esercita. Vaga = peggio che assente.
5. **Bonus.** Per ciascuno: nome + obiezione esatta che neutralizza (presa
   VERBATIM da B2 o dalla tabella 3 di B6) + scadenza/exclusivity. La mappa
   bonus -> obiezione e parte dell'output, non un extra.
6. **Scarcity e urgency.** Solo meccaniche REALI: se dichiari posti limitati,
   esiste il limite; se dichiari una deadline, il carrello chiude davvero.
7. **Payment plan** (se presente): rate, importo, frequenza.
8. **Documento finale.** Struttura = ossa del nodo C1. Questo documento diventa
   LA fonte di verita del prezzo del brand: prezzo, garanzia, bonus e deadline
   si riportano verbatim ovunque a valle. Segnala a KB-NUMBERS il prezzo
   definitivo, cosi il modello si ri-verifica.

**Craft di riferimento (metodo provato Morfeus):** `${CLAUDE_PLUGIN_ROOT}/skills/kb-c1/references/craft.md`
porta i framework, le formule e le tabelle gia validati sui lanci reali (soglie di
mercato, sequenze, matrici decisionali, esempi). Consultalo per la profondita
operativa di ogni task qui sopra. La rubrica di completezza del nodo resta
sovraordinata: il craft.md dice COME farlo da fuoriclasse, i `complete_when`
dicono QUANDO e finito e a che standard.

Vincoli trasversali: da qui in poi prezzo, garanzia, bonus e deadline si
riportano verbatim ovunque; ogni difformita anche di una parola nei documenti a
valle e un difetto; l'output cita B2, B6, KB-NUMBERS, `existing_material` e
`human_input` come fonti.

## 3. Self-check (trigger di rifiuto)

- [ ] Il prezzo non regge nel modello KB-NUMBERS? → RIFIUTO (o decisione documentata di revisione dei numeri).
- [ ] Scarcity dichiarata senza meccanica reale? → RIFIUTO.
- [ ] Value stack con valori non difendibili? → RIFIUTO.
- [ ] Un bonus senza obiezione mappata? → toglilo o mappalo.
- [ ] La garanzia e vaga ("soddisfatti o rimborsati" senza termini)? → riscrivi.
Se anche uno scatta: correggi PRIMA di consegnare.

## 4. Consegna

- Output markdown: documento offerta completo + mappa bonus -> obiezione +
  prezzo definitivo per KB-NUMBERS.
- Evidence bundle: la mappa bonus -> obiezione + il check KB-NUMBERS (regge/non regge).
- Il documento e un asset permanente della KB del brand (nodo C1): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
  La chiusura di C1 triggera il re-check di KB-NUMBERS e alimenta C3 e C7.
