---
name: kb-d1
description: "Produce il documento KB evergreen Tono di voce (nodo D1) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo D1 del plugin morfeus-marketing-kb."
---

# Skill · KB D1 Tono di voce

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/D1.yaml`,
   e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:B2.output` (avatar: a chi parla la voce, con che pattern di comunicazione)
   - `kb:B5.output` (VOC: la lingua del cliente su cui il tono si tara)
   - `existing_material` (comunicazioni, copy e brand voice gia esistenti del brand)
   - `human_input` (la voce e una scelta dell'operatore: preferenze e vincoli suoi)
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Calibrazione

Le cinque golden rules, in sintesi operativa:
1. Il tono si mostra, non si descrive: "diretto ma empatico" non dice nulla,
   un paragrafo di esempio dice tutto.
2. Parla la lingua del cliente, non la tua: il tono giusto e tarato sul VOC,
   non sulla preferenza estetica del brand.
3. La voce e fatta anche di cio che NON dici: le parole vietate definiscono il
   tono quanto quelle da usare. I confini creano la personalita.
4. Coerenza sopra brillantezza: un tono riconoscibile e costante batte un tono
   geniale che cambia a ogni asset.
5. Il tono ha un'emozione dominante: urgenza, calore, sfida, complicita.
   Senza registro emotivo primario il copy suona piatto.

## 2. Produzione

Craft, in ordine:

1. **Registro.** Formale, informale, colloquiale, tecnico: scegli dal pattern
   di comunicazione di B2 (come parla il target, dove si informa), non dal
   gusto del brand.
2. **Aggressivita.** Quanto la voce spinge, sfida, mette pressione: coerente
   con la sofisticazione del rapporto che il target tollera.
3. **Emotivita.** Il livello e L'EMOZIONE DOMINANTE, una: e la scelta che
   impedisce al copy di suonare piatto.
4. **Personalita verbale.** Se la voce fosse una persona: come parla, cosa non
   direbbe mai. Un archetipo concreto batte tre aggettivi.
5. **Parole da usare / vietate.** 10-15 + 10-15. Le parole da usare vengono da
   B5 (le dice il cliente); le vietate sono quelle da marketer che il cliente
   non usa mai. La lista vietate deve essere abbastanza specifica da cambiare
   come suona un paragrafo.
6. **Sample.** 3-5 concreti: un paragrafo email, un hook, una CTA. Sono il
   cuore del documento: dai soli sample, un copywriter terzo deve replicare
   la voce senza leggere le descrizioni. Scrivili con parole tracciabili a B5.
7. **Verifica lingua.** I sample parlano la lingua di B5 o quella del brand?
   Confronta frase per frase col VOC: se suona come il brand ma non come il
   cliente, e sbagliato.
8. **Documento.** Struttura = ossa del nodo D1: descrizioni brevi, sample in
   evidenza, approvabili singolarmente.

**Craft di riferimento (metodo provato Morfeus):** `${CLAUDE_PLUGIN_ROOT}/skills/kb-d1/references/craft.md`
porta i framework, le formule e le tabelle gia validati sui lanci reali (soglie di
mercato, sequenze, matrici decisionali, esempi). Consultalo per la profondita
operativa di ogni task qui sopra. La rubrica di completezza del nodo resta
sovraordinata: il craft.md dice COME farlo da fuoriclasse, i `complete_when`
dicono QUANDO e finito e a che standard.

Vincoli trasversali: niente claim inventati dentro i sample (se un sample cita
numeri o prove, sono placeholder dichiarati o dati con fonte); l'output cita B2,
B5, `existing_material` e `human_input` come fonti. Ogni documento di copy a
valle dichiarera coerenza con questo tono.

## 3. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] Nessun sample (o meno di 3)? → RIFIUTO: senza sample il tono non esiste.
- [ ] Sample che si contraddicono tra loro? → RIFIUTO, riallinea.
- [ ] Lista parole vietate assente? → RIFIUTO.
- [ ] Soli aggettivi senza un rigo di esempio? → riscrivi mostrando, non descrivendo.
- [ ] Il linguaggio dei sample non e tracciabile a B5? → torna al VOC.
Se anche uno scatta: correggi PRIMA di consegnare.

## 4. Consegna

- Output markdown: documento tono (registro, aggressivita, emozione dominante,
  personalita) + liste parole + 3-5 sample approvabili singolarmente.
- Evidence bundle: i sample + la traccia sample -> frasi B5 che li fondano.
- Il documento e un asset permanente della KB del brand (nodo D1): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
  Alimenta C8 (che eredita i confini di tono) e ogni ramo di copy a valle.
