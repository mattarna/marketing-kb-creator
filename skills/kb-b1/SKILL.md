---
name: kb-b1
description: "Produce il documento KB evergreen ICP e posizionamento (nodo B1) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo B1 del plugin morfeus-marketing-kb."
---

# Skill · KB B1 ICP e posizionamento

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/B1.yaml`, e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `existing_material` (materiale del brand gia esistente: sito, offerta, pagine, note posizionamento)
   - `human_input` (conoscenza diretta del business, mercato, vincoli reali)
3. B1 e la radice strategica della KB: non ha nodi KB a monte, parte dal materiale e dalle dichiarazioni. Se un input necessario manca: fermati e chiedilo. Mai inventare il contenuto di un input.

## 1. Calibrazione

Leggi le golden rules PRIMA di produrre. Le cinque, in sintesi operativa:
1. Il posizionamento e una scelta di CONTESTO: scegli la categoria mentale in cui
   il cliente ti confronta, non descrivere cosa sei.
2. L'ICP forte si definisce per SOTTRAZIONE: se nessuno si sente escluso, e molle.
3. Sequenza Dunford: alternative → attributi unici → valore → chi tiene a quel
   valore → categoria. Il cliente target e DEDOTTO, non scelto per primo.
4. Massimo LTV batte massima convertibilita: scegli chi resta, ricompra, evangelizza.
5. La categoria e una leva: differenza in mercato affollato, sottocategoria per
   prendere il meglio di entrambi. Sceglila, non ereditarla.

## 2. Produzione

Craft, in ordine:

1. **Categoria.** Parti da dove il cliente cerca oggi la soluzione (non da dove
   vorresti competere). Elenca 2-3 categorie candidate e scegli quella dove gli
   attributi unici del brand pesano di piu.
2. **Alternative reali.** La domanda giusta e: "se il cliente ideale non
   scegliesse il brand, cosa comprerebbe DAVVERO?" Includi le alternative non ovvie:
   non fare niente, farlo in casa, il freelance, il tool self-service.
3. **Promessa core.** Misurabile e falsificabile: risultato + orizzonte. Se non
   si puo smentire, non e una promessa.
4. **Differenziatore.** Un attributo che l'alternativa non puo rivendicare senza
   mentire. Se tutti possono dirlo, scendi di livello finche non trovi quello vero.
5. **De-posizionamento.** "Cosa NON siamo" esplicito, con nome della categoria
   respinta. Chi stiamo ATTIVAMENTE respingendo? Serve una risposta.
6. **Validazione Dunford.** Compila la tabella nell'ordine del framework
   (mai partire dal cliente). Ogni riga discende dalla precedente.
7. **ICP a massimo LTV.** Descrivi chi compra, e soddisfatto, ricompra, ne parla.
   Non chi converte piu facilmente. Se i due divergono, dichiaralo: e
   un'informazione strategica, non un dettaglio.
8. **Documento.** Il test finale: un terzo che non conosce il brand, in 30 secondi,
   sa chi e il cliente, contro chi compete e perche vince.

Vincoli trasversali: niente dati inventati; ogni claim su competitor
verificabile; l'output cita `existing_material` e `human_input` come fonti.

## 3. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] L'ICP e definito come "il piu facile da convertire"? → RIFIUTO, riscrivi.
- [ ] La categoria e senza alternative competitive reali? → RIFIUTO.
- [ ] La promessa non e falsificabile? → RIFIUTO.
- [ ] Il de-posizionamento e assente? → RIFIUTO.
- [ ] Test aggiuntivo: somiglia a "imprenditori 30-50 che vogliono crescere con
      l'AI"? Non esclude nessuno → riscrivi.
Se anche uno scatta: correggi PRIMA di consegnare.

## 4. Consegna

- Output markdown: documento posizionamento + tabella Dunford compilata
  + 3 frasi VOC che dimostrano che questo cliente esiste e parla cosi (frasi da
  fonti reali in `existing_material`/`human_input`, mai inventate; il re-check
  arrivera quando esistera il nodo B5).
- Evidence bundle: tabella Dunford + le 3 frasi con fonte.
- Il documento e un asset permanente della KB del brand (nodo B1): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
  Da B1 dipendono B2, B3, B4, D3 e i nodi narrativa/value-ladder.
