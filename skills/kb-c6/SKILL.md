---
name: kb-c6
description: "Produce il documento KB evergreen Logica di segmentazione email (nodo C6) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo C6 del plugin morfeus-marketing-kb."
---

# Skill · KB C6 Logica di segmentazione email

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/C6.yaml`,
   e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:C3.output` (il funnel: ogni evento usato qui deve esistere li)
   - `existing_material` (automazioni, tag e flussi di segmentazione gia in uso dal brand)
   - `human_input`
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il
   contenuto di un input. Nota: questo e il documento a piu alto rischio di
   fallimento silenzioso dell'intero sistema email.

## 1. Produzione

Craft, in ordine:

1. **Regola buyer.** Acquisto -> soppressione IMMEDIATA da ogni sales email,
   con tempistica dichiarata (quanti minuti/ore tra evento e uscita dai
   flussi). "Appena possibile" non e una tempistica. Un buyer che riceve
   "ultimo giorno per comprare" e un danno di fiducia che nessuna metrica
   cattura subito: questa regola non ha eccezioni.
2. **Partecipante vs no-show.** Due flussi diversi con contenuti diversi: chi
   ha visto il pitch riceve la close, chi non l'ha visto riceve prima il replay.
3. **Visitatore sales page senza acquisto.** Flusso specifico che riparte da
   dove si e fermato, non dal pitch generico.
4. **Click senza conversione.** Follow-up mirato sull'intento mostrato.
5. **Inventario tag/eventi.** Ogni tag ed evento che triggera le regole,
   mappato 1:1 sugli eventi che C3 genera davvero: un evento che il funnel non
   produce e una regola morta.
6. **Priorita agli incroci.** Il cuore del documento: un lead in due
   condizioni contemporanee (buyer che era no-show, clicker che poi compra)
   deve avere UNA regola vincente dichiarata. I casi felici li mappa chiunque;
   il lavoro sta nelle intersezioni.
7. **Tempistiche.** Ingresso e uscita da ogni flusso: quando si entra, cosa fa
   uscire, dove si atterra dopo.
8. **Mappa + diagramma se/allora.** Il documento completo, leggibile da chi
   dovra implementarlo in piattaforma (es. Brevo) senza domande.
9. **Simulazione 5 percorsi.** Scrivi la traccia completa di: buyer, no-show,
   partecipante non-buyer, clicker non-buyer, dormiente. Chi riceve cosa e
   quando: la simulazione e la prova, non un esercizio.

Vincoli trasversali: ogni evento citato esiste in C3 (tracciabilita); niente
flussi ipotetici; l'output cita C3, `existing_material` e `human_input` come
fonti. Questa mappa vincola C8, tutte le sequenze (KB-LIFECYCLE) e
l'implementazione in piattaforma.

## 2. Self-check (trigger di rifiuto ASSOLUTI)

Prima di consegnare, verifica onestamente:
- [ ] Esiste anche UN percorso in cui un buyer riceve una sales email? → RIFIUTO assoluto.
- [ ] Un lead puo trovarsi in due flussi in conflitto senza regola di priorita? → RIFIUTO assoluto.
- [ ] La mappa copre i casi felici e ignora le intersezioni? → RIFIUTO, completa gli incroci.
- [ ] Un evento usato nelle regole non esiste nel funnel C3? → correggi.
- [ ] Manca una delle 5 simulazioni, o una simulazione contraddice una regola? → sistema.
Se anche uno scatta: correggi PRIMA di consegnare.

## 3. Consegna

- Output markdown: tabella evento -> azione + diagramma se/allora + regole di
  priorita + tempistiche + simulazione scritta dei 5 percorsi tipo.
- Evidence bundle: la simulazione dei 5 percorsi (la prova richiesta) +
  l'inventario eventi mappato su C3.
- Il documento e un asset permanente della KB del brand (nodo C6): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
  Vincola C8, le sequenze KB-LIFECYCLE e l'implementazione operativa.
