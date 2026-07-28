---
name: kb-big-idea
description: "Produce la Big Idea di categoria (sezione big-idea del nodo KB-NARRATIVE) per la knowledge base di marketing evergreen di un brand: la tesi non ovvia che, se il cliente la capisce, cambia come vede il problema. Adattata da marketing p6 (unique mechanism / big idea), ri-inquadrata come asset permanente della narrativa. Usala dentro il plugin morfeus-marketing-kb per la sezione Big Idea della Narrativa strategica."
---

# Skill · Big Idea di categoria

Costruisci l'idea centrale del brand: quella che, se il cliente la afferra, cambia il modo in cui
vede il suo problema. NON e il messaggio (Message House) ne gli angoli tattici (kb-angoli): e il
concetto-madre da cui tutto discende. Sezione della Narrativa strategica, asset evergreen.

## 0. Contratto
1. Leggi la definition: `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/KB-NARRATIVE.yaml` (sezione big-idea).
2. Input: nucleo brand (KB-BRAND-CORE, per nemico/manifesto), posizionamento (B1),
   sofisticazione di mercato (B3), `existing_material` + `human_input` per i buchi.
3. Regola: la Big Idea deve essere coerente col nemico/manifesto del nucleo brand. Se tira da
   un'altra parte, uno dei due va rivisto, non nascosto.

## 1. Diagnosi di sofisticazione (metodo p6, Schwartz)
Il livello del mercato decide quanto la Big Idea deve staccarsi dalla promessa nuda:
- **Livello 1-2** (mercato ingenuo/consapevole): la promessa diretta basta, la Big Idea e leggera.
- **Livello 3+** (mercato sofisticato): il cliente ha sentito la stessa promessa 10 volte. La Big
  Idea deve riformulare il problema, non ripetere il beneficio. E il "new opportunity" di Brunson,
  un nuovo-cosa, non un miglior-come.
Dichiara il livello (leggilo da B3 se presente) e taratura di conseguenza.

## 2. Il gap di verita (il Villain)
Prima della tesi nuova, articola perche il paradigma dominante fallisce: "Tutti credono [X] perche
[convenzione]. Ma [X] e incompleto perche [catena logica]. Il risultato e [conseguenza che il
target riconosce]." Questo gap e l'apertura emotiva in cui la Big Idea entra.

## 3. Formulazione della Big Idea
Una tesi non ovvia, in una frase, che riframma il problema. Test di validita (dai test p6):
- **Visualizzabilita**: leggendola si forma un'immagine concreta, non un'astrazione.
- **Falsificabilita**: e abbastanza specifica che la realta possa confermarla o smentirla.
- **Differenziazione**: sostituisci il nome del brand con un competitor. Regge ancora? Allora non
  e abbastanza tua.
- **Risposta alla domanda critica**: risponde a "perche il tuo, quando ho gia provato altri simili?".
Se ne fallisce uno, torna indietro e affinala.

## 4. Coerenza
Verifica che la Big Idea, il nemico del nucleo brand e (se presenti) meccanismo e angoli raccontino
UNA storia sola. La Big Idea e il ceppo: meccanismo e angoli sono rami dello stesso albero.

## Output
Sezione "Big Idea di categoria" del documento `STR_strategia/narrativa.md`: gap di verita (villain)
+ la Big Idea in una frase + esito dei quattro test. La firma il founder/CMO.
