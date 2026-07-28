---
name: kb-c3
description: "Produce il documento KB evergreen Architettura funnel completa (nodo C3) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo C3 del plugin morfeus-marketing-kb."
---

# Skill · KB C3 Architettura funnel completa

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/C3.yaml`
   (inclusi i `parameters`: C3 e parametrica, il pattern esce dalle regole, non dal gusto), e produci
   un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:B3.output` (awareness: la struttura parla al livello del cliente)
   - `kb:C1.output` (offerta: prezzo e modalita vendita decidono le pagine)
   - `kb:KB-NUMBERS.output` (il modello: il funnel deve poter produrre quei volumi)
   - `existing_material` (funnel, pagine e sorgenti di traffico gia esistenti del brand)
   - `human_input`
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Calibrazione

Le cinque golden rules, in sintesi operativa:
1. Il funnel segue il livello di consapevolezza (scala Schwartz), non i tuoi
   gusti: la struttura si deduce da dove parte la testa del cliente.
2. Un solo next-step per pagina: ogni opzione in piu e conversione persa.
3. La temperatura del traffico decide la lunghezza: il freddo ha bisogno di
   piu costruzione, il caldo salta passaggi.
4. Ogni pagina eredita il momentum della precedente: il funnel e una catena di
   micro-si; una promessa rotta spezza la catena li.
5. Progetta il viaggio, non le pagine: le pagine sono nodi, il valore e nelle
   transizioni. Prima il percorso emotivo, poi le stanze.

## 2. Produzione

Craft, in ordine:

1. **Pattern da regole.** Applica i `parameters` della definition: webinar ->
   webinar funnel (optin + TY evento + reminder); VSL -> VSL funnel; prezzo
   C1 sopra ~2k -> application page + call; lista/pubblico caldo -> si puo
   partire dall'email, freddo -> l'optin e il collo di bottiglia. Un ibrido va
   giustificato dalla regola, non dall'estro.
2. **Elenco pagine in sequenza.** Ogni pagina con il suo UNICO scopo dichiarato
   (una azione desiderata per pagina). Se una pagina ha due lavori, sono due
   pagine o un lavoro di troppo.
3. **Touchpoint email per step.** Dove entrano welcome, reminder, close: ogni
   touchpoint deve avere un flusso corrispondente nell'architettura email (C8/KB-LIFECYCLE).
4. **Ingressi ads.** Freddo -> optin; retargeting -> sales/application: coerente
   con la temperatura, mai freddo diretto su pagine da traffico caldo senza regola.
5. **Flussi condizionali.** Buyer vs non-buyer, show vs no-show: i rami che C6
   trasformera in regole di segmentazione. Disegnali ora o C6 li erediterebbe monchi.
6. **Diagramma completo.** Il flusso end-to-end, dal primo touch all'acquisto.
7. **Tabella pagina -> sorgente traffico -> azione -> next step.** La prova che
   nessuna pagina e orfana: ogni riga ha una sorgente che vi punta.
8. **Validazione contro KB-NUMBERS.** I tassi realistici di questo flusso producono
   i volumi del modello? La chiusura di C3 triggera il re-check di KB-NUMBERS coi
   numeri del funnel reale.

**Craft di riferimento (metodo provato Morfeus):** `${CLAUDE_PLUGIN_ROOT}/skills/kb-c3/references/craft.md`
porta i framework, le formule e le tabelle gia validati sui lanci reali (soglie di
mercato, sequenze, matrici decisionali, esempi). Consultalo per la profondita
operativa di ogni task qui sopra. La rubrica di completezza del nodo resta
sovraordinata: il craft.md dice COME farlo da fuoriclasse, i `complete_when`
dicono QUANDO e finito e a che standard.

Vincoli trasversali: prezzo e modalita vendita VERBATIM da C1; niente volumi
inventati (i numeri vengono da KB-NUMBERS); l'output cita B3, C1, KB-NUMBERS,
`existing_material` e `human_input` come fonti.

## 3. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] Una pagina orfana (esiste ma nessuna sorgente vi punta)? → RIFIUTO.
- [ ] Un touchpoint senza flusso corrispondente nell'architettura email? → RIFIUTO.
- [ ] Pattern ibrido non giustificato dalla regola? → RIFIUTO.
- [ ] La struttura ignora la temperatura del traffico (stessa forma per caldo e
      freddo)? → non hai parametrizzato: rivedi.
- [ ] Il flusso non puo produrre i volumi di KB-NUMBERS? → segnala e triggera la revisione.
Se anche uno scatta: correggi PRIMA di consegnare.

## 4. Consegna

- Output markdown: pattern dichiarato con regola applicata + diagramma di
  flusso + tabella pagina -> sorgente traffico -> azione -> next step + flussi
  condizionali.
- Evidence bundle: la tabella completa + il check volumi contro KB-NUMBERS.
- Il documento e un asset permanente della KB del brand (nodo C3): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
  Il pattern vincola pagine, email e ads a valle; la chiusura triggera il
  re-check di KB-NUMBERS e alimenta C6, C7 e C8.
