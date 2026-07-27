---
name: kb-assessment
description: "Motore di assessment della knowledge base di marketing. E il punto di ingresso del plugin morfeus-marketing-kb: da qualsiasi situazione (da zero, materiale sparso, business avviato) fotografa cosa esiste, misura la completezza contro la casa della KB, chiede solo cio che manca, produce i documenti mancanti riusando le skill esistenti, e DEPOSITA una cartella-KB completa e AI-consumabile. Usala quando si deve costruire o aggiornare la knowledge base di marketing di un brand."
---

# Skill · Motore di assessment KB

Sei l'orchestratore che costruisce la knowledge base di marketing completa di un brand.
NON produci tu i documenti a mano: fotografi, misuri, chiedi il mancante, e per produrre
richiami i **producer** dichiarati nei nodi (skill del launcher, del plugin marketing, o
le poche skill native di questo plugin). Alla fine depositi la cartella-KB.

## 0. Contratto (leggi prima di partire)

1. Il dominio e in `${CLAUDE_PLUGIN_ROOT}/catalog/`:
   - `schema.yaml` (forma del nodo), `README.md` (la casa: 21 nodi in 6 sezioni),
   - `nodes/<CODE>.yaml` (ogni nodo: rubrica `completeness`, `elicitation`, `producer`, `stage`).
2. Regola d'oro, ereditata dal launcher: **prezzo, promessa, garanzia, bonus, deadline
   hanno UNA fonte di verita** (i nodi OFR/AST). Ovunque compaiano, verbatim da li.
3. NON riscrivere i producer esistenti e NON toccare il launcher. Li richiami, non li duplichi.
4. Rispetta `stage`: un nodo `grows` che non serve allo stadio del brand si marca
   **"non serve ancora"**, MAI "mancante/rosso". Niente caselle-fuffa per completismo.
5. Output finale = una cartella `<brand>-kb/` (vedi step 8 e i template in
   `${CLAUDE_PLUGIN_ROOT}/templates/`). Lo stato di lavoro vive in `.morfeus-kb/`.

## La spina a 8 passi

### 1 · Situation scan
Capisci dove sei. Chiedi (o deduci dal materiale fornito): stadio del business
(idea / primo prodotto / avviato / multi-prodotto), cosa esiste gia, dove vive
(cartelle, sito, doc, trascrizioni). Da qui decidi quali nodi `grows` sono attivi.
Registra lo stadio: guida tutto lo scoring.

### 2 · Inventory
Mappa il materiale esistente ai nodi della casa. Per ogni pezzo di materiale:
a quale nodo appartiene? Leggi davvero il materiale (non assumere). Produci una
tabella materiale → nodo. Cio che non aggancia a nessun nodo va in "materiale extra".
**Questo passo e uno dei due che decidono la qualita dell'assessment: leggi con cura.**

### 3 · Scoring
Per ogni nodo attivo, apri `nodes/<CODE>.yaml` e confronta il materiale agganciato
con la rubrica `completeness`:
- nessuna evidenza / vale `absent_when` → **assente**
- soddisfa `partial_when` ma non tutti i `complete_when` → **parziale**
- soddisfa tutti i `complete_when` → **completo**
Sii severo e cita l'evidenza: "parziale perche manca X (criterio complete_when n.3)".
Lo scoring soggettivo e l'altro passo critico: motiva ogni verdetto, non dare voti a naso.

### 4 · Gap report
Ordina i buchi per: (a) dipendenze (`depends_on`: prima i nodi a monte), (b) impatto,
(c) stadio. Produci `00_ASSESSMENT/gap-report.md`: per nodo → stato, cosa manca,
priorita. Marca i `grows` non attivi come "non serve ancora (stadio)".

### 5 · Elicitation
SOLO per i nodi assenti/parziali attivi, fai le domande del campo `elicitation` del nodo.
Non chiedere cio che il materiale gia copre. Raggruppa le domande per non sfiancare
l'utente. Raccogli le risposte come `human_input` per il passo 6.

### 6 · Production
Per ogni nodo da riempire, guarda `execution.producer` (e `sections[].producer`):
- `launcher_skill:<CODE>` → invoca la skill del launcher.
- `marketing_skill:<id>` → invoca la skill del plugin marketing.
- `skill:<name>` → invoca la skill nativa di questo plugin (solo i gap veri:
  message-house, channels, lifecycle, numbers-baseline).
- `executor_type: compose` → orchestra piu producer + aggiungi il `delta` dichiarato.
Passa come input il materiale esistente + le risposte di elicitazione. NON reinventare:
il producer sa come si fa, tu gli dai il contesto e integri l'output come documento evergreen.

### 7 · Integration
Cuci i documenti e verifica la coerenza incrociata (`coherence_with` di ogni nodo):
stessa promessa, stesso destinatario, stesso prezzo ovunque. Applica i `checks`
di livello coherence dei nodi. Dove trovi conflitti, NON invalidare in silenzio:
presenta la discrepanza e chiedi come risolvere (fonte di verita unica).

### 8 · Deposit (la cartella-KB)
Genera la cartella-prodotto usando i template in `${CLAUDE_PLUGIN_ROOT}/templates/`:
- `<brand>-kb/CLAUDE.md` da `templates/kb-CLAUDE.md.tpl` (contratto d'uso per le AI)
- `<brand>-kb/kb-manifest.yaml` da `templates/kb-manifest.yaml.tpl` (stato di ogni nodo)
- `<brand>-kb/README.md` (per umani)
- `<brand>-kb/00_ASSESSMENT/gap-report.md`
- una cartella per sezione (`FND_fondamenta/`, `MKT_mercato/`, `STR_strategia/`,
  `OFR_offerta/`, `GTM_go-to-market/`, `AST_asset/`) con un file `.md` per nodo prodotto.
Aggiorna il manifest con stato, score e path di OGNI nodo (anche assenti/non-serve-ancora):
e cio che rende la KB interrogabile da un'AI e dal launcher.

## Fine giro
Consegna: dove hai depositato la cartella, il gap report in sintesi, e i nodi
ancora aperti (assenti/parziali) con le domande residue. La KB e viva: al prossimo
giro si riparte dal manifest, non da zero.
