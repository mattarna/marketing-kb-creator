---
name: kb-d3
description: "Produce il documento KB evergreen Brand identity brief (nodo D3) per la knowledge base di marketing di un brand. Adattata dal metodo del launcher, ri-inquadrata come asset permanente (NON per un singolo lancio). Usala dentro il nodo D3 del plugin morfeus-marketing-kb."
---

# Skill · KB D3 Brand identity brief

## 0. Contratto

1. Leggi la tua definition e la rubrica di completezza in `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/D3.yaml`,
   e produci un documento che soddisfa i `complete_when`.
2. Carica gli input, SOLO questi:
   - `kb:B1.output` (posizionamento: la direzione visiva lo deve reggere)
   - `kb:B2.output` (avatar: la direzione parla a QUESTA persona)
   - `existing_material` (identita visiva, moodboard e asset gia esistenti del brand)
   - `human_input` (gusti, riferimenti e vincoli visivi dell'operatore/cliente)
3. Se un input manca o non e chiuso: fermati e segnala. Mai inventare il contenuto di un input.

## 1. Produzione

Craft, in ordine:

1. **Direzione creativa da B1 + B2.** La domanda guida: cosa deve SENTIRE
   l'avatar quando atterra su una pagina di questo brand, e cosa deve capire
   del posizionamento senza leggere una riga? La direzione discende dalla
   strategia, non dai trend. Se il posizionamento de-posiziona i competitor,
   il visivo deve distinguersi dai LORO codici visivi (guardali: e ricerca,
   non copia).
2. **Mood e riferimenti.** Moodboard testuale o visivo con riferimenti REALI e
   citabili (siti, brand, direzioni): per ogni riferimento, cosa prenderne e
   cosa no. Un riferimento senza istruzione e un'ambiguita passata a D2.
3. **Colori e font di direzione.** Preferenze e vincoli, non la formalizzazione
   (quella e D2): famiglie di colore con l'intenzione emotiva, tipo di
   carattere con il perche. Abbastanza preciso da orientare, abbastanza aperto
   da lasciare a D2 il lavoro di sistema.
4. **Linee guida immagini.** Stile foto, illustrazioni, AI-generated: cosa si
   usa, cosa e vietato (es. stock generico sorridente), con che trattamento.
5. **Linee guida layout.** Densita, respiro, gerarchia: come le pagine devono
   guidare l'occhio, in coerenza con il tipo di decisione che l'avatar deve
   prendere.
6. **Brief completo.** Il test finale: chi costruisce D2 con questo brief non
   deve tornare a fare domande. Ogni sezione chiusa con indicazioni concrete,
   non con aggettivi.

**Craft di riferimento (metodo provato Morfeus):** `${CLAUDE_PLUGIN_ROOT}/skills/kb-d3/references/craft.md`
porta i framework, le formule e le tabelle gia validati sui lanci reali (soglie di
mercato, sequenze, matrici decisionali, esempi). Consultalo per la profondita
operativa di ogni task qui sopra. La rubrica di completezza del nodo resta
sovraordinata: il craft.md dice COME farlo da fuoriclasse, i `complete_when`
dicono QUANDO e finito e a che standard.

Vincoli trasversali: niente riferimenti inventati (ogni riferimento visivo e
reale e citabile); la direzione non contraddice B1 ne parla a un avatar diverso
da B2; l'output cita B1, B2, `existing_material` e `human_input` come fonti.

## 2. Self-check (trigger di rifiuto)

Prima di consegnare, verifica onestamente:
- [ ] Brief fatto di soli aggettivi ("moderno, pulito, premium")? → RIFIUTO.
- [ ] Il brief lascerebbe domande aperte a chi deve costruire D2? → RIFIUTO, completa.
- [ ] Manca uno dei blocchi (colori, font, mood, riferimenti, direzione,
      linee guida immagini/layout)? → completa.
- [ ] La direzione non parla all'avatar B2 o non regge il posizionamento B1? → riallinea.
- [ ] Riferimenti visivi senza istruzione (cosa prenderne)? → completa.
Se anche uno scatta: correggi PRIMA di consegnare.

## 3. Consegna

- Output markdown: brief visivo completo: direzione creativa, mood e
  riferimenti, colori e font di direzione, linee guida immagini e layout.
- Evidence bundle: la mappa direzione -> fondamento strategico (B1/B2) + i
  riferimenti citati.
- Il documento e un asset permanente della KB del brand (nodo D3): verifica i
  `complete_when` della rubrica, poi proponilo al proprietario per validazione.
  Alimenta D2 (che a sua volta guida tutto il ramo visivo a valle).
