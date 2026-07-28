---
name: kb-c8
description: "Produce il documento KB evergreen Email architecture map (nodo C8) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo C8 del plugin morfeus-marketing-kb."
---

# Skill · KB C8 Email architecture map

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/C8.yaml`
   (inclusi i `parameters`: C8 e parametrica, numero e forma dei flussi escono dalle regole), e produci
   un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:C3.output` (il funnel: decide quali flussi esistono)
   - `kb:C6.output` (segmentazione: cio che nessun flusso puo violare)
   - `kb:D1.output` (tono: i confini entro cui varia il tono per flusso)
   - `existing_material` (sequenze e automazioni email gia esistenti del brand)
   - `human_input`
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Calibrazione

Le cinque golden rules, in sintesi operativa:
1. Architettura prima di prosa: pattern, numero, obiettivo e tono di ogni
   flusso si decidono PRIMA di scrivere una riga. La mappa e il progetto, le
   email sono i mattoni.
2. Un flusso, un lavoro: la welcome indottrina, la pre-lancio anticipa, la
   close chiude. Un flusso con due lavori li fa male entrambi.
3. Il pattern si sceglie dal compito: Soap Opera per anticipazione narrativa,
   Matrix per angoli multipli su segmenti, standard per l'operativo.
4. Il numero di email esce da una regola, non da un'abitudine: giorni,
   temperatura e prezzo determinano la lunghezza. "Faccio sempre 5" e un default.
5. La mappa e il guardiano della segmentazione: qui si verifica che nessun
   flusso mandi cio che C6 vieta. L'architettura previene l'incidente che il
   singolo copy non vede.

## 2. Produzione

Craft, in ordine:

1. **Inventario flussi.** Dal funnel C3: pre-lancio, reminder (solo se
   webinar), welcome, close, cart abandon, post-purchase, nurture, upsell.
   Copertura 1:1: ogni sequenza che il funnel attiva e in mappa, e ogni flusso
   in mappa ha il suo trigger nel funnel.
2. **Pattern per flusso.** Dal compito (golden rule 3), con il pattern scritto
   accanto al perche: "Soap Opera perche serve anticipazione su lista calda"
   e una decisione; "Soap Opera" da sola e un default.
3. **Numero email da regola.** Applica i `parameters`: giorni di pre-lancio ->
   ~1 email/giorno, mai piu di 1 senza motivo; prezzo alto -> close con piu
   gestione obiezioni e meno pressione; lista fredda -> piu indottrinamento
   prima di chiedere.
4. **Obiettivo per flusso.** UNO solo, dichiarabile in una frase
   (anticipazione, conversione, relazione, attivazione). Due obiettivi = due
   flussi o una mappa sbagliata.
5. **Tono per flusso.** Narrativo, diretto, educativo, urgente: sempre dentro
   i confini di D1 (il tono varia per compito, la voce resta una).
6. **Interconnessioni.** Chi esce da un flusso dove entra: le giunzioni sono
   il punto dove i lead si perdono o si bruciano.
7. **Priorita.** Contatto in piu flussi -> quale vince: coerente con le regole
   di C6, mai in conflitto.
8. **Mappa completa.** Diagramma + documento: flusso -> pattern -> numero ->
   obiettivo -> tono.
9. **Check incrociato C6.** Riga per riga: nessun flusso prevede un invio che
   la segmentazione vieta. Il check documentato e parte dell'output.

Vincoli trasversali: tono conforme a D1 (usa i sample, non le descrizioni);
nessun invio che violi C6; l'output cita C3, C6, D1, `existing_material` e
`human_input` come fonti. Questa mappa vincola tutte le sequenze a valle (KB-LIFECYCLE).

## 3. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] Una sequenza attivata dal funnel assente dalla mappa (o viceversa)? → RIFIUTO.
- [ ] Un flusso senza numero email o senza obiettivo? → RIFIUTO.
- [ ] Un conflitto con C6 (la mappa prevede un invio vietato)? → RIFIUTO.
- [ ] Un flusso con due lavori? → spezzalo o ridisegna.
- [ ] Numero email da abitudine o pattern per default, senza regola dichiarata? → motiva o correggi.
Se anche uno scatta: correggi PRIMA di consegnare.

## 4. Consegna

- Output markdown: mappa flusso -> pattern -> numero -> obiettivo -> tono +
  interconnessioni + regole di priorita + diagramma.
- Evidence bundle: la mappa completa + il check incrociato C6 documentato.
- Il documento e un asset permanente della KB del brand (nodo C8): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
  La mappa vincola tutte le sequenze KB-LIFECYCLE a valle.
