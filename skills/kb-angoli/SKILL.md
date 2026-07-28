---
name: kb-angoli
description: "Produce gli Angoli di attacco (sezione angoli del nodo KB-NARRATIVE) per la knowledge base di marketing evergreen di un brand: le porte d'ingresso tattiche sullo stesso meccanismo, ognuna una credenza da testare. Adattata dalla skill launcher B8-angoli-di-attacco, ri-inquadrata come asset permanente della narrativa (non per un singolo lancio). Usala dentro il plugin morfeus-marketing-kb per la sezione Angoli della Narrativa strategica."
---

# Skill · Angoli di attacco

Costruisci il repertorio di angoli del brand: i modi diversi di entrare nella testa del cliente
sullo stesso meccanismo. Un angolo e una CREDENZA da testare, non una variazione estetica. NON sono
il meccanismo (a monte, la fonte) ne il copy finale: sono le porte. Sezione della Narrativa
strategica, asset evergreen da cui ads, email e contenuti pescano nel tempo.

## 0. Contratto
1. Leggi la definition: `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/KB-NARRATIVE.yaml` (sezione angoli).
2. Input: avatar/pain/desideri (B2), sofisticazione (B3), frasi-trigger / voice of customer (B5-B6),
   il Meccanismo Unico (dalla stessa narrativa), `existing_material` + `human_input`.
3. Regola: ogni angolo nasce da una riga precisa di materiale reale (un pain, un desiderio, una
   frase del cliente), non dal brainstorming a vuoto. Un angolo orfano e fuori.

## 1. Produzione (metodo B8)
1. **Base di partenza.** Rileggi pain/desideri (B2), frasi-trigger (B6) e livello (B3): ogni angolo
   nasce da una riga precisa. Ogni angolo deve inoltre essere riconducibile al Meccanismo Unico:
   sono porte diverse sullo stesso core, non idee scollegate.
2. **Generazione 10-15 angoli.** Copri famiglie diverse: benefit, pain, curiosity, identity,
   urgency, contrarian, story. Per ognuno scrivi da quale riga di B2/B6 nasce e a quale parte del
   meccanismo si aggancia. Attenzione al travestimento: due angoli che attaccano lo stesso pain con
   parole diverse sono UN angolo, non due. Il taglio segue B3: mercato sofisticato → angoli su
   meccanismo e identita; mercato fresco → promessa diretta funziona ancora.
3. **Prioritizzazione.** Ordina per carica emotiva della fonte (le frasi che fanno male sono i
   candidati migliori) e allineamento col posizionamento. Un angolo potente ma fuori posizionamento
   e un debito.
4. **Selezione top 5-7.** Quelli pronti per la produzione. Gli scartati restano nel documento con il
   motivo: sono la riserva per i test futuri.
5. **Sintesi + uso.** Per ogni angolo selezionato: una frase di sintesi (il claim del test, non un
   titolo definitivo) + indicazione d'uso (cold traffic, retargeting, email, organico) coerente con
   la temperatura che quel tipo di angolo regge.

## 2. Self-check (trigger di rifiuto)
- [ ] Un angolo orfano, non collegato a un pain/desiderio o al meccanismo? → RIFIUTO.
- [ ] Angoli che sono riformulazioni della stessa idea? → fondili in uno.
- [ ] Meno di 10-15 generati o top 5-7 non selezionati? → completa.
- [ ] Un angolo selezionato senza frase di sintesi o senza indicazione d'uso? → completa.
- [ ] Il taglio ignora il livello B3 (promessa nuda in mercato sofisticato)? → rivedi.

## Output
Sezione "Angoli di attacco" del documento `STR_strategia/narrativa.md`: lista prioritizzata top 5-7
(sintesi + fonte pain/desiderio + aggancio al meccanismo + indicazione d'uso) + i generati scartati
con motivo + la mappa angolo → riga di origine.
