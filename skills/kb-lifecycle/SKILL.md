---
name: kb-lifecycle
description: "Produce la Customer Lifecycle Map: le sei fasi del cliente (awareness, consideration, conversion, onboarding, retention, advocacy) come mappa unica, ognuna con obiettivo, touchpoint e metrica, piu il collo di bottiglia attuale e i momenti di advocacy. NON e un singolo funnel (quello e C3): e la cornice evergreen di cui i funnel sono tratti. Usala dentro il nodo KB-LIFECYCLE."
---

# Skill · Customer Lifecycle Map

Costruisci la mappa del cliente end-to-end. Il gap che colmi: oggi le fasi esistono sparse
tra funnel (acquisizione) e retention/advocacy, mai in una vista unica.

## 0. Contratto
1. Leggi: `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/KB-LIFECYCLE.yaml`.
2. Input: avatar (B2), value ladder (KB-VALUE-LADDER, per sapere quale offerta in quale fase),
   canali (KB-CHANNELS). Piu `human_input` su dove si perde gente oggi.
3. Rispetta lo stadio: con un solo prodotto/nessuna base clienti la mappa e minima, non forzarla.

## 1. Le sei fasi
Adatta le canoniche al business: awareness → consideration → conversion → onboarding →
retention → advocacy. Se una fase non esiste ancora (es. advocacy in un business nuovo),
dillo esplicitamente, non riempirla di fuffa.

## 2. Per ogni fase
- **Obiettivo:** cosa deve succedere nella testa/azione del cliente
- **Touchpoint/contenuto:** cosa lo fa muovere (aggancia canali e value ladder)
- **Metrica:** come misuri il passaggio

## 3. Collo di bottiglia
Dove si perde piu valore OGGI, localizzato (non "convertiamo poco"): in quale passaggio,
di quanto. E' l'informazione piu azionabile della mappa.

## 4. Advocacy
Come un cliente felice ne porta altri: e progettato o capita? Nomina i momenti e i trigger.

## Output
Documento `GTM_go-to-market/lifecycle.md`: tabella 6 fasi (obiettivo · touchpoint · metrica ·
offerta dalla ladder), collo di bottiglia evidenziato, meccanismo di advocacy.
