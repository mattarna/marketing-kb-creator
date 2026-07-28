---
name: kb-c7
description: "Produce il documento KB evergreen Referral system design (nodo C7) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo C7 del plugin morfeus-marketing-kb."
---

# Skill · KB C7 Referral system design

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/C7.yaml`
   (inclusi i `parameters`), e produci un documento che soddisfa i `complete_when`.
   C7 e un nodo che si compila quando il brand ha (o vuole) un sistema di referral:
   se il brand non ne prevede uno, il nodo resta assente per scelta dichiarata.
2. Carica gli input, SOLO questi:
   - `kb:C1.output` (offerta: cio che l'incentivo NON puo regalare)
   - `kb:C3.output` (funnel: dove il referral si aggancia)
   - `existing_material` (programma referral/ambassador gia attivo, se esiste)
   - `human_input` (la meccanica scelta dal brand: viral loop, ambassador, share-for-bonus)
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Produzione

Craft, in ordine:

1. **Incentivo per chi referisce.** Dentro la meccanica decisa dal brand: qui si
   DISEGNA, non si ridecide. L'incentivo migliore aumenta il valore
   dell'ecosistema (accesso, status, contenuto esclusivo) invece di scontare:
   lo sconto e l'ultima opzione, mai su cio che C1 vende come valore.
2. **Incentivo per chi viene referito** (se la meccanica lo prevede). Il
   double-sided funziona quando il referito riceve un vantaggio d'ingresso che
   non svaluta il prezzo pubblico di C1.
3. **Tracking.** Link personalizzato, codice o form: scegli il piu semplice che
   la piattaforma del brand supporta davvero, e dichiara COME si attribuisce
   la conversione (cookie, codice al checkout, campo form). Un referral senza
   attribuzione certa e una promessa che non si puo onorare.
4. **Pagina dedicata.** Se serve una pagina, mappala in C3: una pagina referral
   fuori dall'architettura e una pagina orfana (trigger C3).
5. **Integrazione nel flusso.** Dove il referral viene proposto: TY page,
   email, area riservata. Il momento giusto e subito dopo un picco di valore
   percepito (iscrizione riuscita, acquisto), mai prima.
6. **Documentazione.** Meccanica completa end-to-end: chi fa cosa, chi riceve
   cosa, quando, come si traccia, cosa succede al limite (autoreferral, abusi).

**Craft di riferimento (metodo provato Morfeus):** `${CLAUDE_PLUGIN_ROOT}/skills/kb-c7/references/craft.md`
porta i framework, le formule e le tabelle gia validati sui lanci reali (soglie di
mercato, sequenze, matrici decisionali, esempi). Consultalo per la profondita
operativa di ogni task qui sopra. La rubrica di completezza del nodo resta
sovraordinata: il craft.md dice COME farlo da fuoriclasse, i `complete_when`
dicono QUANDO e finito e a che standard.

Vincoli trasversali: valore e prezzo dell'offerta VERBATIM da C1 (mai regalare o
scontare cio che C1 vende come valore); ogni pagina/touchpoint e mappato in C3;
l'output cita C1, C3, `existing_material` e `human_input` come fonti.

## 2. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] L'incentivo cannibalizza il valore dell'offerta C1 (regala o sconta cio
      che l'offerta vende)? → RIFIUTO.
- [ ] La meccanica e diversa da quella scelta dal brand? → RIFIUTO, riallinea.
- [ ] Il tracking non e definito (come si attribuisce la conversione)? → completa.
- [ ] Una pagina o touchpoint referral non mappato in C3? → mappa o togli.
- [ ] Incentivi promessi che il brand non puo onorare operativamente? → correggi.
Se anche uno scatta: correggi PRIMA di consegnare.

## 3. Consegna

- Output markdown: meccanica completa (incentivi, tracking, pagine dedicate)
  + integrazione nel flusso + gestione casi limite.
- Evidence bundle: il check di non-cannibalizzazione contro C1 + la mappa
  pagine/touchpoint in C3.
- Il documento e un asset permanente della KB del brand (nodo C7): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
