---
name: kb-b4
description: "Produce il documento KB evergreen Analisi competitor (nodo B4) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo B4 del plugin morfeus-marketing-kb."
---

# Skill · KB B4 Analisi competitor

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/B4.yaml`, e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:B1.output` (le alternative competitive, dirette e indirette, sono il punto di partenza)
   - `existing_material` (materiale del brand, ricerche competitor gia raccolte)
   - `human_input` (conoscenza diretta del mercato e dei canali)
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Produzione

Craft, in ordine:

1. **Selezione 3-5 competitor.** Parti dalle alternative di B1, non da chi TU
   consideri concorrente: includi almeno un'alternativa indiretta se B1 la
   elenca (il fai-da-te, il tool, il freelance). Scarta chi non compete davvero
   per lo stesso budget del cliente.
2. **Offerta.** Cosa vendono, a che prezzo, con che garanzia e bonus: solo cio
   che e osservabile (sales page, checkout, listini pubblici). Se il prezzo non
   e pubblico, scrivi "non osservabile", non una stima spacciata per dato.
3. **Funnel.** Percorri il funnel da utente: che pagine, in che sequenza, che
   pattern (webinar, VSL, application). Annota gli step con URL o screenshot.
4. **Hook e angoli.** Raccogli dalle fonti osservabili (ads library, social,
   YouTube): trascrizioni esatte degli hook, non ricostruzioni a memoria.
   Classifica per tipo di angolo: servira al confronto sul meccanismo unico.
5. **Posizionamento e promessa.** Come si presenta ognuno, quale promessa fa,
   contro chi si de-posiziona. Cita le frasi esatte da cui lo deduci.
6. **Pattern comuni.** Cosa fanno TUTTI allo stesso modo: e la mappa di cio che
   il mercato ha gia sentito (alimenta il livello di sofisticazione).
7. **Gap e opportunita.** Cosa nessuno copre: angoli non usati, segmenti
   ignorati, promesse assenti. Ogni gap deve discendere dalle schede, non
   essere un auspicio.
8. **Report con tabella comparativa.** Una riga per competitor, colonne fisse:
   offerta, prezzo, funnel, hook principali, posizionamento. Piu la sezione gap.

Vincoli trasversali: la regola che qui morde di piu e NIENTE claim non
verificati su un competitor: ogni affermazione ha fonte recuperabile (URL,
screenshot, export ads library) o non entra nel report. L'output cita B1,
`existing_material` e `human_input` come fonti.

## 2. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] Anche UN claim su un competitor senza fonte o riscontro verificabile? → RIFIUTO.
- [ ] Meno di 3 o piu di 5 competitor? → correggi la selezione.
- [ ] Una scheda senza uno dei blocchi (offerta, funnel, hook, prezzo, posizionamento)? → completa o dichiara "non osservabile".
- [ ] Tabella comparativa o sezione gap assente? → RIFIUTO.
- [ ] I competitor analizzati non sono le alternative di B1? → riallinea.
Se anche uno scatta: correggi PRIMA di consegnare.

## 3. Consegna

- Output markdown: schede 3-5 competitor + tabella comparativa + gap/opportunita.
- Evidence bundle: la lista fonti per claim (URL, screenshot, export) riga per riga.
- Il documento e un asset permanente della KB del brand (nodo B4): verifica i
  `complete_when` della rubrica prima di consegnare. Alimenta il nodo del
  meccanismo unico e il kit di sales enablement.
