---
name: kb-value-ladder
description: "Produce la mappa Value Ladder (nodo KB-VALUE-LADDER) per la knowledge base di marketing evergreen di un brand: tutti i prodotti come gradini di una scala di valore, il percorso di salita e l'architettura di prezzo tra i gradini. Adattata da marketing a2 (offer design & pricing, soprattutto la FASE value ladder), ri-inquadrata come asset permanente standalone. Usala dentro il plugin morfeus-marketing-kb quando serve la scala d'offerta completa, non la singola offerta."
---

# Skill · Portfolio + Value Ladder

Costruisci l'ecosistema d'offerta del business: non la singola offerta (quella e C1), ma tutta la
scala, dal lead magnet al high-ticket, come un cliente sale e l'architettura di prezzo tra i
gradini. Documento evergreen: la mappa di portafoglio da cui ogni lancio e ogni funnel pescano.

## 0. Contratto
1. Leggi la definition: `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/KB-VALUE-LADDER.yaml` (rubrica `complete_when` + `delta`).
2. Input: `existing_material` (listino, prodotti esistenti e potenziali), posizionamento (B1),
   baseline numeri (KB-NUMBERS, per verificare prezzi e margini) + `human_input`.
3. Nota di stato: un business con un solo prodotto non ha ancora una scala. In quel caso il nodo si
   marca "non serve ancora", non "mancante": non forzare gradini che non esistono.

## 1. Inventario dei gradini (metodo a2, FASE value ladder)
Elenca tutto cio che il brand vende o potrebbe vendere, dal gratis al piu caro. Per ognuno assegna
il ruolo nella scala:

| Posizione | Funzione |
|---|---|
| **Entry** (lead magnet / free) | Acquisizione lista |
| **Low-ticket** | Cash engine + proof |
| **Mid-ticket** (verticale / bundle) | Upgrade path |
| **Recurring** (membership) | MRR engine |
| **High-ticket** (mentorship / done-with-you) | Profit-center / future option |

## 2. Percorso di salita
Come e perche un cliente passa da un gradino al successivo. Verifica: ogni step e un upgrade
naturale dal precedente? Chi compra il low-ticket e il candidato ideale per il mid-ticket? Un salto
senza logica di salita e un buco.

## 3. Architettura di prezzo
Prezzo per gradino con il rationale del salto (perche questo prezzo, perche questo scalino). Ancora
i prezzi al valore generato, non ai competitor. Verifica prezzi e margini in KB-NUMBERS: se non
reggono li, la scala e su carta. Identifica il profit-center (chi fa davvero i soldi) e il
piede-nella-porta (chi serve solo a far entrare la gente).

## 4. Buchi e sovrapposizioni (delta del nodo)
Il nodo chiede l'estrazione come documento evergreen standalone (a2 lo produce dentro l'offer design
di UN'offerta): qui il focus e la scala intera. Nomina esplicitamente:
- i **buchi**: salti di prezzo troppo grandi, gradini mancanti;
- le **sovrapposizioni**: prodotti che si pestano i piedi, ridondanti.

## Output
Documento `OFR_offerta/value-ladder.md`: tabella gradini con ruolo, percorso di salita, architettura
di prezzo con rationale del salto, profit-center e front-end identificati, buchi e sovrapposizioni
nominati. E una decisione economica di portafoglio: la firma il founder.
