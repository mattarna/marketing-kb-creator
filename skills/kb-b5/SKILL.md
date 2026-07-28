---
name: kb-b5
description: "Produce il documento KB evergreen Voice of customer (nodo B5) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo B5 del plugin morfeus-marketing-kb."
---

# Skill · KB B5 Voice of customer

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/B5.yaml`, e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:B2.output` (avatar: sai CHI cercare e quali pain confermare)
   - `existing_material` (fonti reali del brand: recensioni, DM, survey, trascrizioni gia raccolte)
   - `human_input` (fonti reali fornite o indicate: recensioni, DM, survey, trascrizioni call)
3. Se un input manca o non e chiuso: fermati e segnala. In particolare: senza
   fonti reali accessibili questo documento NON si puo produrre. Mai inventare.

## 1. Produzione

Craft, in ordine:

1. **Fonti.** Identifica e cita fonti di TIPO DIVERSO (recensioni, commenti
   social, DM, survey, trascrizioni call): mono-fonte = campione distorto =
   rifiuto. Per ogni fonte annota il riferimento recuperabile.
2. **Frasi pain.** Estrai le parole ESATTE, con errori e sintassi originale
   inclusi: la frase levigata perde il potere. "Desidero ottimizzare il mio
   funnel" non l'ha mai detto nessun cliente; se suona da marketer, e sospetta.
3. **Frasi desiderio.** Stessa regola: verbatim. Cerca le frasi dove il cliente
   descrive lo stato futuro con parole sue, non con la tua promessa.
4. **Frasi paura/obiezione.** Le piu preziose per offerta e halo strategy: il
   "si, ma" detto con parole vere. Includi le frasi scomode che contraddicono
   l'avatar: le incoerenze con B2 si dichiarano e si risolvono, non si filtrano.
5. **Parole ricorrenti.** Pattern linguistici, metafore, termini che il target
   usa e che il brand non userebbe: alimentano direttamente il tono di voce.
6. **Organizzazione.** Tre categorie (pain / desire / objection language),
   minimo 10 frasi ciascuna. Meglio 10 frasi cariche che 30 tiepide: la
   selezione delle frasi piu cariche emotivamente e lo spazio di giudizio di
   questa skill. Chiediti: quale frase fa un po' male a leggerla?
7. **Documento con colonna FONTE.** Ogni riga: frase verbatim + fonte +
   riferimento recuperabile. Una riga senza fonte non esiste.

Vincoli trasversali: niente dati inventati e qui la regola E il
documento: verbatim o fuori, zero parafrasi. L'output cita B2,
`existing_material` e le fonti di `human_input`; la chiusura di B5 permette il
re-check di B2: segnala le frasi che confermano o smentiscono i pain di B2.

## 2. Self-check (trigger di rifiuto ASSOLUTI)

Prima di consegnare, verifica onestamente:
- [ ] Anche UNA frase inventata, levigata o non attribuibile? → RIFIUTO assoluto.
- [ ] Meno di 10 frasi in una categoria? → RIFIUTO: raccogli ancora, non riempire.
- [ ] Fonti tutte dello stesso tipo? → RIFIUTO: diversifica il campione.
- [ ] Una riga con colonna FONTE vuota? → toglila o recupera la fonte.
- [ ] Test del bar: letta ad alta voce, la colonna frasi suona come persone vere
      o come una brochure? Se brochure → hai parafrasato, torna alle fonti.
Se anche uno scatta: correggi PRIMA di consegnare.

## 3. Consegna

- Output markdown: 3 categorie di frasi verbatim (minimo 10 per categoria) con
  colonna FONTE compilata per ogni riga + sezione parole ricorrenti.
- Evidence bundle: la colonna FONTE stessa (riferimenti recuperabili) + nota di
  coerenza/incoerenza con i pain di B2 per il re-check.
- Il documento e un asset permanente della KB del brand (nodo B5): verifica i
  `complete_when` della rubrica prima di consegnare. Alimenta B2 (re-check), B6,
  il tono di voce e i nodi di hook e ad copy.
