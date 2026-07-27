---
name: kb-numbers-baseline
description: "Produce la baseline unit economics del business come asset evergreen: prezzi e margini per prodotto, CAC/LTV se noti, tassi di conversione tipici, valore medio ordine, ognuno con fonte e data e marcato stimato vs verificato. NON e il modello matematico di un lancio (quello e A4): e la realta economica permanente su cui ogni strategia deve reggere. E il gap piu netto (a4b la presuppone e nessuno la produce). Usala dentro il nodo KB-NUMBERS."
---

# Skill · Unit economics baseline

Costruisci i numeri-base del business come documento permanente. Il gap che colmi: i mattoni
esistono (A4 per-lancio, A3 benchmark, a2 pricing) ma la baseline evergreen non la produce
nessuno, e a4b la da per esistente. Qui la crei.

## 0. Contratto
1. Leggi: `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/KB-NUMBERS.yaml`.
2. Input: `existing_material` (conti, spreadsheet, dati piattaforma) + `human_input`.
3. Regola d'oro: **ogni numero ha fonte e data, ed e marcato STIMATO o VERIFICATO.** Un numero
   a memoria spacciato per verificato e il peccato capitale: falsa ogni decisione a valle.

## 1. Prezzi e margini
Per ogni prodotto/gradino: prezzo, costo, margine. Se il margine non e noto, dillo (stimato).

## 2. Acquisizione e valore
- CAC (costo di acquisizione), se disponibile o ordine di grandezza dichiarato
- LTV (valore nel tempo), se ricorrente: valore per periodo x durata media
- Valore medio ordine

## 3. Conversioni tipiche
I tassi dei passaggi chiave (lead→call, call→vendita, visita→lead), se noti. Marca le stime.

## 4. Igiene del dato
Per ogni numero: fonte + data + [stimato|verificato]. Separa nettamente i due: la baseline
verificata e cio su cui si decide; le stime sono ipotesi da validare.

## Output
Documento `AST_asset/numeri-baseline.md`: tabella prezzi/margini per prodotto, CAC/LTV,
conversioni, ognuna con fonte, data e flag stimato/verificato. E' fonte di verita per i numeri.
