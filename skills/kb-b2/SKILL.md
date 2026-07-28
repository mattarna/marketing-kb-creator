---
name: kb-b2
description: "Produce il documento KB evergreen Avatar del cliente ideale (nodo B2) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo B2 del plugin morfeus-marketing-kb."
---

# Skill · KB B2 Avatar del cliente ideale

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/B2.yaml`, e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:B1.output` (ICP e posizionamento: l'avatar E quel cliente, dettagliato)
   - `existing_material` (dati clienti esistenti, materiale del brand)
   - `human_input` (conoscenza diretta del target)
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Calibrazione

Le cinque golden rules, in sintesi operativa:
1. La specificita e persuasione: "vuole piu liberta" non vende nulla; "controlla
   l'email alle 23 col portatile sulle gambe" fa scrivere una sequenza intera.
2. Scava il pain sotto il pain: il primo dolore dichiarato non e quello vero.
   Il secondo livello e dove sta l'emozione che vende.
3. Il tentativo fallito e oro: cosa ha gia provato, e la storia che si racconta
   sul perche non ha funzionato, definisce dove entra il meccanismo.
4. Un avatar, non tre travestiti da uno: segmenti diversi sono una decisione
   strategica da dichiarare, non da annacquare mediando.
5. L'avatar e una persona, non un istogramma: deve avere un giorno, una voce,
   un momento concreto.

## 2. Produzione

Craft, in ordine:

1. **Demografia.** Eta, genere, professione, reddito, situazione: numeri e
   contesti reali, non range cosi larghi da non escludere nessuno.
2. **Psicografia.** Valori, credenze, identita aspirata: chi VUOLE diventare,
   non solo chi e. L'acquisto e un voto sull'identita futura.
3. **Pain (top 5-7).** Per ciascuno scendi di un livello: dietro il pain pratico
   c'e quello emotivo (paura, vergogna, status). Scrivi entrambi.
4. **Desideri (top 5-7).** Outcome concreti e misurabili nella vita del cliente,
   non astrazioni ("scalare" no; "chiudere il venerdi alle 15" si).
5. **Paure e rischi percepiti.** Cosa teme che succeda SE compra e SE non compra.
6. **Tentativi falliti.** Cosa ha gia provato + la storia che si racconta sul
   perche e fallito: e il varco in cui il meccanismo unico dovra entrare.
7. **Obiezioni all'offerta.** Specifiche del prodotto/servizio del brand,
   non obiezioni universali buone per qualsiasi vendita.
8. **Momenti quotidiani.** Scena, luogo, ora in cui il pain colpisce: materiale
   diretto per hook e apertura di email.
9. **Pattern di comunicazione.** Dove si informa, chi ascolta, che linguaggio
   usa: alimenta i nodi canali e tono di voce.
10. **Documento avatar.** Test finale: un copywriter terzo ci scrive un hook
    senza farti una domanda.

Vincoli trasversali: niente dati inventati; e lo stesso cliente di B1;
l'output cita B1, `existing_material` e `human_input` come fonti. Quando esistera
il nodo B5 (VOC), ogni pain dovra avere almeno una frase VOC che lo conferma:
segnala ora i pain che sono ipotesi da verificare.

## 3. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] Tratti orizzontali che valgono per chiunque ("vuole piu tempo e soldi")? → riscrivi.
- [ ] Obiezioni generiche non legate all'offerta del brand? → RIFIUTO.
- [ ] Piu avatar mescolati senza dichiararlo? → RIFIUTO: la decisione va a monte.
- [ ] Pain/desideri che al re-check B5 non potranno trovare conferma verbatim? → marca come ipotesi.
- [ ] Ogni pain regge un hook senza domande aggiuntive? Se no → scava ancora.
Se anche uno scatta: correggi PRIMA di consegnare.

## 4. Consegna

- Output markdown: documento avatar completo (i blocchi della rubrica); dove
  esiste B5, ogni pain con la frase VOC di conferma.
- Evidence bundle: documento + mappa pain → frase VOC (o marcatura "ipotesi, in
  attesa di B5" finche il nodo non esiste).
- Il documento e un asset permanente della KB del brand (nodo B2): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
  Da B2 dipendono B5, B6 e i nodi a valle di messaggio e offerta.
