---
name: kb-b3
description: "Produce il documento KB evergreen Sofisticazione mercato (nodo B3) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo B3 del plugin morfeus-marketing-kb."
---

# Skill · KB B3 Sofisticazione mercato

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/B3.yaml`, e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:B1.output` (la categoria scelta: e QUEL mercato che si analizza)
   - `existing_material` (materiale del brand, esempi di mercato osservati)
   - `human_input` (conoscenza diretta del mercato)
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Produzione

Craft, in ordine (framework: Eugene Schwartz, Breakthrough Advertising):

1. **Awareness del target.** Colloca il cliente sulla scala Schwartz: unaware →
   problem aware → solution aware → product aware → most aware. Il livello si
   deduce da come il cliente CERCA oggi (query, domande, linguaggio), non da
   come vorresti che fosse. Dichiara il livello con la scala esplicita.
2. **Sofisticazione del mercato (1-5).** Quante promesse simili ha gia sentito
   questo mercato? Livello 1-2: la promessa diretta basta ancora. Livello 3:
   servono promesse amplificate o specifiche. Livello 4-5: il mercato e sordo
   alle promesse, si vende il MECCANISMO o l'identificazione. Il livello si
   dimostra con cio che i competitor dicono oggi, non a sensazione.
3. **Implicazioni sul messaggio.** La parte che vale il documento: a QUESTO
   livello, che tipo di headline funziona, che apertura serve, cosa e vietato
   dire perche gia bruciato. Implicazioni che valgono per qualsiasi livello
   sono riempitivo: ogni implicazione deve discendere dal verdetto.
4. **Decisione meccanismo.** Livello 4-5 → serve un meccanismo unico; livello
   1-2 → basta il benefit diretto. Scrivi la decisione esplicita: il nodo del
   meccanismo unico la legge come verifica preliminare.
5. **Esempi dal mercato.** Almeno un esempio concreto e citabile (ad, headline,
   sales page di competitor) che dimostra il livello dichiarato. L'esempio e
   la prova, non la decorazione.

Vincoli trasversali: il mercato analizzato e la categoria di B1, non
un mercato generico; niente esempi inventati: ogni esempio ha fonte
verificabile; l'output cita B1, `existing_material` e `human_input` come fonti.

## 2. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] Verdetto dichiarato senza implicazioni operative sul messaggio? → RIFIUTO.
- [ ] Implicazioni generiche valide per qualsiasi livello? → RIFIUTO, riscrivi.
- [ ] Uno dei due livelli manca o e senza scala esplicita? → completa.
- [ ] Nessun esempio concreto dal mercato? → aggiungi o non consegnare.
- [ ] La decisione meccanismo si/no e assente? → aggiungi.
Se anche uno scatta: correggi PRIMA di consegnare.

## 3. Consegna

- Output markdown: verdetto awareness + sofisticazione (scale esplicite),
  sezione implicazioni sul messaggio, decisione meccanismo, esempi dal
  mercato con fonte.
- Evidence bundle: gli esempi citati con fonte + la catena livello → implicazione.
- Il documento e un asset permanente della KB del brand (nodo B3): verifica i
  `complete_when` della rubrica prima di consegnare. Alimenta i nodi del
  meccanismo unico, degli angoli e delle headline.
