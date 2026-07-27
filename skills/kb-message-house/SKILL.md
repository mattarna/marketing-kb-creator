---
name: kb-message-house
description: "Produce la Message House: il messaggio-core del brand in una frase, 3-5 pilastri di messaggio, e almeno un proof point per pilastro. E l'unico pezzo genuinamente nuovo della Narrativa strategica (Big Idea, Meccanismo e Angoli sono gia coperti da skill esistenti). Usala dentro il nodo KB-NARRATIVE quando manca l'architettura di messaggio riusabile."
---

# Skill · Message House

Costruisci l'architettura di messaggio riusabile: la struttura da cui copy, contenuti,
pagine e lanci pescano il messaggio, sempre coerente. NON e la Big Idea (quella e a monte,
p6/B7) ne gli angoli tattici (B8): e il ponte tra l'idea e le mille uscite.

## 0. Contratto
1. Leggi la definition: `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/KB-NARRATIVE.yaml` (sezione message-house).
2. Input: Big Idea + Meccanismo (dalle altre sezioni della narrativa), posizionamento (B1),
   VoC (B5), proof-bank (KB-PROOF-BANK). Piu `human_input` per i buchi.
3. Regola: ogni pilastro deve avere una prova. Un pilastro senza proof e un'opinione, non regge.

## 1. Core message
Una frase che dice: per CHI, quale TRASFORMAZIONE, tramite quale MECCANISMO, diversa da tutti.
Deve essere coerente col nemico/manifesto del nucleo brand e con la promessa dell'offerta.
Test: se la leggi al cliente ideale, deve fargli dire "e' esattamente il mio problema".

## 2. Pilastri (3-5)
I temi ricorrenti che sostengono il core message. Ogni pilastro:
- una tesi (cosa affermi)
- perche e vera (il collegamento al meccanismo)
- a quale obiezione/credenza risponde
Non piu di 5: se ne hai di piu, stai mescolando pilastri e angoli.

## 3. Proof per pilastro
Per ogni pilastro, almeno un proof point dal proof-bank (testimonial, dato, case, credenziale).
Se un pilastro non ha prova, o trovi la prova (torna al proof-bank) o il pilastro non e pronto.

## 4. Coerenza
Verifica che core message, pilastri e Big Idea raccontino UNA storia. Se un pilastro tira da
un'altra parte, tuo compito e segnalarlo, non nasconderlo.

## Output
Sezione "Message House" del documento `STR_strategia/narrativa.md`:
core message (1 frase) + tabella pilastri (tesi · perche · obiezione · proof).
