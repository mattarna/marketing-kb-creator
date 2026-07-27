# CLAUDE.md — morfeus-marketing-kb

> **Scope note:** questo file e il contratto di SVILUPPO per le sessioni AI che
> lavorano SU questo repo sorgente. NON viene caricato quando il plugin e
> installato (comportamento documentato di Claude Code). Tutto cio che serve al
> plugin installato vive nelle skill (`skills/*/SKILL.md`).

## CRITICAL RULES — READ BEFORE ANY ACTION

### 1. IL PERNO DI QUESTO PLUGIN

Questo plugin costruisce la **knowledge base di marketing completa** di un brand,
via **assessment** (fotografa cosa c'e, misura la completezza, chiede solo il
mancante, integra). Obiettivo primario = la KB migliore possibile, evergreen.
NON e un builder di funnel: il funnel e un consumatore della KB (lo fa il gemello
`morfeus-marketing-launcher`).

### 2. RAPPORTO COL LAUNCHER (non negoziabile in questo ciclo)

- Il launcher (`../morfeus-marketing-launcher/`) e **INTOCCATO**. Non modificare
  nulla la dentro. Nessun file, nessuna skill.
- Lo **schema del catalogo dello strato strategico e condiviso** (codici B/C/D,
  schema DoD): riusa lo stesso vocabolario del launcher cosi la convergenza futura
  costa poco. Puoi LEGGERE il launcher come riferimento; non scriverci.
- La duplicazione dello strato strategico e uno stato **temporaneo e dichiarato**,
  non un incidente: la convergenza (il launcher legge la KB) e il passo 2, post
  validazione.

### 3. FILE LOCATION RULES

**Ogni file di questo plugin vive dentro:**
`03_AI_LAYER/agents/morfeus-marketing-kb/`

| File Type | Location |
|-----------|----------|
| Catalog (dominio: nodi della casa KB) | `catalog/nodes/<CODE>.yaml` + `catalog/schema.yaml` |
| Viste generate (mai a mano) | `catalog/views/` |
| Planning del ciclo | `.planning/` (PROJECT, ROADMAP, phases/) |
| Architecture docs | `docs/architecture/part-XX-*.md` |
| Architecture Decision Records | `docs/adr/NNN-*.md` |
| Skill | `skills/{kebab-name}/SKILL.md` |
| Config (skills-map) | `config/` |
| Script (validate) | `scripts/` |
| Note, scratch | `docs/notes/` |

### 4. NAMING CONVENTIONS

- Architecture docs: `part-01-vision-scope.md` (zero-padded, kebab-case)
- ADR: `001-nome.md` (tre cifre, kebab-case)
- Skill: `skills/{kebab-name}/SKILL.md`
- Nodi catalogo: `catalog/nodes/<CODE>.yaml`

### 5. RUNTIME vs SOURCE

Questo repo e il sorgente. A runtime il plugin crea `.morfeus-kb/` nel workspace
dell'utente (lo stato della KB del brand): NON fa parte del repo, e in `.gitignore`.

### 6. BEFORE YOU START ANY WORK SESSION

1. Leggi questo file
2. Leggi `README.md` per lo stato
3. Leggi `.planning/ROADMAP.md` (fonte unica dello stato) e il `PLAN.md` della fase aperta
4. Metodo: GSD-light (checkbox su file markdown puri, niente comandi /gsd-* in Cowork)

### 7. DECISION LOG (di partenza)

- **K1**: Nome plugin = `morfeus-marketing-kb`; e un prodotto a se, sibling del launcher.
- **K2**: Launcher intoccato; convergenza (launcher legge la KB) = passo 2 post-validazione.
- **K3**: Schema catalogo strato strategico condiviso col launcher (ponte di convergenza).
- **K4**: Due pezzi = motore di assessment (spina) + casa della KB (nodi target).
- **K5**: Stato della KB persistente/versionato in `.morfeus-kb/` (fuori dal repo).
