---
name: kb-brand-core
description: "Produce il Nucleo brand (nodo KB-BRAND-CORE) per la knowledge base di marketing evergreen di un brand: mission, vision, valori operativi, storia d'origine, il nemico e il manifesto/punto di vista. Adattata da marketing br3 (tagline/manifesto), ri-inquadrata come asset permanente a monte della narrativa. Usala dentro il plugin morfeus-marketing-kb quando manca il documento identitario radice."
---

# Skill · Nucleo brand

Costruisci il documento identitario radice del brand: il perche esiste, in cosa crede,
contro chi si schiera. Sta a monte della narrativa (KB-NARRATIVE): idea, messaggio e tono
ci si poggiano sopra. NON e la parte visiva (D2/D3), e il perche. Documento evergreen, non
materiale per un singolo lancio.

## 0. Contratto
1. Leggi la definition: `${CLAUDE_PLUGIN_ROOT}/catalog/nodes/KB-BRAND-CORE.yaml` (rubrica `complete_when` + il `delta`).
2. Input: `existing_material` (dichiarazioni del founder, about, note esistenti) + `human_input`
   per i buchi. Nessun nodo a monte richiesto: e foundational, puo partire dal founder.
3. Regola: valori e mission sono DECISIONI verificabili, non aggettivi da poster. Se una riga
   potrebbe stare sul sito di qualsiasi brand, non e ancora nucleo.

## 1. Il nemico e il punto di vista (metodo br3, cuore)
Il grosso viene dalla tradizione manifesto/positioning (Sinek, Neumeier):
- **La tensione**: il problema o la contraddizione del mercato che il brand vede e il cliente vive.
- **Il nemico**: la credenza diffusa, lo status quo o la categoria contro cui il brand si schiera.
  Nominato, non generico ("la mediocrita" non e un nemico).
- **Il punto di vista / manifesto**: la tesi non ovvia che il brand difende. Se tutti sono
  d'accordo, non e una posizione. Deve attrarre il target e respingere chi non lo e.

## 2. La storia d'origine
Il momento, la decisione o il rifiuto da cui nasce il brand. Il perche personale del founder,
in forma breve e riusabile (bio, about, apertura sito). Concreto, non "abbiamo sempre creduto".

## 3. Delta del nodo (AGGIUNGERE al metodo di br3)
Il nodo KB-BRAND-CORE chiede due pezzi che br3 non copre, produrli esplicitamente:
- **Vision**: dove porta il mercato/il cliente se il brand vince. Una direzione, non uno slogan.
- **Valori operativi (3-5)**: per ognuno la riga "cosa vuol dire quando devi decidere", cioe una
  decisione reale in cui quel valore ha fatto scegliere diversamente. Un valore senza quella riga
  e un aggettivo, non un valore.

## 4. Mission e coerenza
Mission: cosa cambia nel mondo il brand, in una frase verificabile (non slogan). Verifica che
nemico e manifesto siano coerenti col de-posizionamento (nodo B1 se presente): il nucleo non
puo dire una cosa e il posizionamento un'altra.

## Output
Documento `FND_fondamenta/nucleo-brand.md`: mission, vision, 3-5 valori operativi (ognuno con la
riga "in una decisione reale"), storia d'origine, nemico nominato, manifesto/punto di vista.
E l'atto identitario radice: lo firma il founder.
