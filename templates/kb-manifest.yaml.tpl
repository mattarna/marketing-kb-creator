# kb-manifest.yaml · stato macchina-leggibile della KB di {{BRAND}}
# Generato da morfeus-marketing-kb. Un'AI (o il launcher) legge QUESTO per sapere
# di cosa fidarsi senza parsare la prosa. Rigenerato a ogni giro di assessment.

brand: "{{BRAND}}"
kb_version: "{{KB_VERSION}}"
generated: "{{DATE}}"          # ISO
business_stage: "{{STAGE}}"    # idea | primo-prodotto | avviato | multi-prodotto
engine: "morfeus-marketing-kb"

summary:
  nodes_total: {{N_TOTAL}}
  nodes_active: {{N_ACTIVE}}         # esclusi i grows non attivi allo stadio
  complete: {{N_COMPLETE}}
  partial: {{N_PARTIAL}}
  absent: {{N_ABSENT}}
  not_needed_yet: {{N_NOT_NEEDED}}

# Un blocco per nodo. status: completo | parziale | assente | non-serve-ancora
# score: 0-100 (quota di criteri complete_when soddisfatti). trust: alto se completo.
nodes:
  # esempio della forma (ripetere per ogni nodo del catalogo):
  - code: "KB-BRAND-CORE"
    section: "FND"
    name: "Nucleo brand"
    status: "{{STATUS}}"
    score: {{SCORE}}
    stage: "core"
    path: "FND_fondamenta/brand-core.md"     # vuoto se assente
    trust: "{{TRUST}}"                         # alto | cauto | nessuno
    missing: []                                # criteri complete_when non soddisfatti
    is_source_of_truth_for: []                 # es. OFR: ["prezzo","garanzia","bonus","deadline"]
    last_updated: "{{DATE}}"
