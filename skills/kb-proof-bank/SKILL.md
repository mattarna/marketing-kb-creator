---
name: kb-proof-bank
description: "Produce il Proof / Asset Bank (nodo KB-PROOF-BANK) per la knowledge base di marketing evergreen di un brand: archivio persistente e indicizzato di testimonial, case study con numeri, dati, credenziali, taggati per claim sostenuto e per fase del ciclo. Fonde marketing r3 (sistema di raccolta) e launcher J4 (inventario/classificazione), ri-inquadrati come banca permanente e viva tra i lanci. Usala dentro il plugin morfeus-marketing-kb."
---

# Skill · Proof / Asset Bank

Costruisci il serbatoio vivo delle prove del brand. Generalizza R3/J4 (che raccolgono e classificano
PER un lancio): qui e un archivio PERSISTENTE e indicizzato che vive TRA i lanci, da cui ogni pagina
ed email pescano la prova giusta al posto giusto. Asset evergreen, non atto di raccolta one-shot.

## 0. Contratto
1. Leggi la definition: `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/KB-PROOF-BANK.yaml` (rubrica `complete_when` + `delta`).
2. Input: `existing_material` (testimonial, screenshot, case, badge REALI), voice of customer (B5),
   la Narrativa strategica (per sapere quali claim/pilastri vanno sostenuti) + `human_input`.
3. Regola non negoziabile (da J4): proof inventata = RIFIUTO ASSOLUTO. Ogni elemento cita la fonte
   verificabile (nome, riferimento, screenshot, link). Le quote restano VERBATIM: incorniciare il
   vero, mai "migliorare".

## 1. Inventario e classificazione (metodo J4)
Censisci tutto il materiale. Un elemento senza fonte NON entra nella banca: va in lista "da
verificare". Classifica per tipo, servono almeno 4 tipi:
- **Risultati quantificabili** (numeri, metriche, prima/dopo)
- **Trasformazione emotiva** (nelle parole del cliente)
- **Case study** (struttura fissa: situazione prima → azione → risultato numerico con periodo)
- **Autorevolezza** (loghi, badge, menzioni, certificazioni, credenziali)

## 2. Raccolta continua (metodo r3)
Definisci il sistema con cui nuove prove entrano nella banca, non solo quelle esistenti:
- **Timing**: la richiesta va fatta al momento della prima vittoria del cliente, non alla fine.
- **Domande guida** calibrate sul formato (citazione breve / testimonianza media / case study lungo):
  puntano sempre al risultato concreto e misurabile, mai al generico "ottimo, lo consiglio".
- **Permesso d'uso pubblico** raccolto esplicitamente per ogni elemento.

## 3. Delta del nodo: archivio persistente e indicizzato (AGGIUNGERE)
Qui sta il valore nuovo rispetto a r3/J4 (che sono one-shot per lancio). Per OGNI prova, due tag:
- **Claim/pilastro sostenuto**: a quale affermazione forte del brand (pilastro della Narrativa) fa
  da appoggio. Cosi la Message House trova la prova per ogni pilastro.
- **Fase del ciclo**: dove si usa quella prova (cold, consideration, close, post-acquisto).
Piu il **meccanismo di aggiornamento**: come e quando la banca cresce, cosi resta viva e non
fotografia di un singolo lancio.

## 4. Self-check
- [ ] Anche UN elemento inventato, parafrasato oltre il verbatim o non verificabile? → RIFIUTO.
- [ ] Meno di 4 tipi di prova, o tutte dello stesso tipo? → completa.
- [ ] Una prova senza indice claim/pilastro o senza tag di fase? → completa l'indice.
- [ ] Case study senza i tre beat (prima → azione → risultato numerico)? → completa o declassa a testimonial.
- [ ] Un claim forte del brand senza nessuna prova che lo sostiene? → segnalalo come buco onesto.

## Output
Documento `AST_asset/proof-bank.md`: prove per tipo, ognuna con fonte, claim/pilastro sostenuto e
fase del ciclo; case study strutturati; meccanismo di aggiornamento; eventuale lista "da verificare".
E fonte di verita delle prove: la veridicita la firma il founder.
