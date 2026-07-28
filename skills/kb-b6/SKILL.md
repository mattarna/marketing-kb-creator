---
name: kb-b6
description: "Produce il documento KB evergreen Halo Strategy (nodo B6) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo B6 del plugin morfeus-marketing-kb."
---

# Skill · KB B6 Halo Strategy

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/B6.yaml`, e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:B2.output` (avatar: pain, desideri, paure, obiezioni gia mappati)
   - `kb:B5.output` (VOC: il serbatoio verbatim da cui si attinge)
   - `human_input` (integrazioni e conoscenza diretta, per i buchi)
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Calibrazione

Le cinque golden rules, in sintesi operativa:
1. Verbatim o niente: il potere dello strumento e che le frasi-trigger sono le
   parole ESATTE del cliente. La parafrasi da marketer distrugge tutto il valore.
2. Prima persona, presente, emozione grezza: "ho paura che" e non "il cliente
   teme". Devi sentire il pensiero, non catalogarlo.
3. Le tre tabelle sono un motore, non un archivio: le paure alimentano obiezioni
   e agitation, i sogni alimentano promesse, le barriere alimentano garanzie.
   Compili pensando a cosa alimentera ogni riga.
4. Intensita sopra completezza: dieci frasi tiepide valgono meno di tre che
   fanno male a leggerle.
5. Le contraddizioni sono gemme: quando lo stesso cliente desidera una cosa e
   la teme, hai trovato la tensione centrale del messaggio.

## 2. Produzione

Craft, in ordine:

1. **Tabella 1 · Paure e dolori.** 10-15 righe TEMA | FRASE-TRIGGER. Il TEMA e
   la tua etichetta di lavoro; la FRASE-TRIGGER e del cliente, mai tua.
2. **Estrazione da B5 e B2.** Ogni frase-trigger parte da una frase B5 o da un
   pain B2 confermato: si puo compattare, MAI riscrivere col tuo lessico. Se
   la fonte e in terza persona, riportala in prima persona restando dentro le
   parole del cliente.
3. **Tabella 2 · Sogni e aspirazioni.** 10-15 righe. Cerca lo stato futuro
   descritto con le parole del cliente; annota le coppie sogno/paura che sono
   lo stesso desiderio visto da due lati.
4. **Tabella 3 · Barriere, incertezze e obiezioni.** 10-15 righe. E la tabella
   che il nodo offerta usera per mappare bonus e garanzia: ogni riga deve essere
   un "si, ma" che un bonus o una prova puo neutralizzare.
5. **Validazione prima persona.** Rileggi solo la colonna FRASE-TRIGGER ad alta
   voce: deve suonare come una persona che parla, non come una brochure. Ogni
   frase in terza persona o in linguaggio da agenzia si corregge o si toglie.
6. **Documento + mappa riga → fonte.** Ogni riga tracciata alla frase B5 o al
   pain B2 di origine. La mappa e parte dell'output, non un extra.

Vincoli trasversali: niente frasi inventate: ogni riga ha origine
tracciabile; l'output cita B2 e B5 come fonti. Spazio di giudizio:
intensita sopra completezza; le contraddizioni desiderio/paura si tengono in
evidenza, sono materiale pregiato, non errori.

## 3. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] Righe non tracciabili a B5 o B2? → RIFIUTO.
- [ ] Una tabella sotto le 10 righe? → RIFIUTO: raccogli, non riempire.
- [ ] Frase-trigger che e un claim di marketing travestito? → RIFIUTO, togli.
- [ ] Frasi in terza persona o linguaggio da agenzia ("il cliente teme di non
      ottenere ROI")? → riscrivi in prima persona dalle fonti.
Se anche uno scatta: correggi PRIMA di consegnare.

## 4. Consegna

- Output markdown: le 3 tabelle complete (10-15 righe ciascuna, colonne TEMA e
  FRASE-TRIGGER) + mappa riga → fonte.
- Evidence bundle: le 3 tabelle + la mappa riga → fonte.
- Il documento e un asset permanente della KB del brand (nodo B6): la risonanza
  emotiva la giudica il proprietario, che il mercato lo sente. Verifica i
  `complete_when` della rubrica, poi proponilo per validazione. Alimenta il
  meccanismo unico, l'offerta e i nodi di obiezioni e script.
