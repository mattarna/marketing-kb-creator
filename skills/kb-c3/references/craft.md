<!-- CRAFT REFERENCE per C3 · cava di materiale (ADR-013).
     Sorgente: marketing-skills/skill-f2-funnel-architect (metodo provato Morfeus).
     Reference consultabile, NON eseguibile: la skill nativa porta contratto e DoD,
     questo file porta framework, formule e tabelle gia validati sui lanci. -->

---
name: skill-f2-funnel-architect
description: >-
  Disegna l'architettura completa di un funnel — traffico → optin → tripwire → core offer → upsell/OTO → backend. Sceglie il pattern giusto (VSL funnel, webinar funnel, application funnel, SLO funnel, lead magnet + nurture + sales, low-ticket → high-ticket), mappa i touchpoint email, produce KPI per step e rischi architetturali. USA QUESTA SKILL ogni volta che l'utente vuole strutturare un funnel, scegliere il pattern migliore per la sua offerta, disegnare dall'inizio il flusso dal traffico alla vendita. Attiva quando dice "come strutturo il funnel", "architettura funnel", "che funnel mi serve", "dal traffico alla vendita", "pattern funnel", "VSL funnel vs webinar funnel", "disegnami il funnel", "step del funnel", "ascension model", "tripwire", "SLO", "funnel builder", "mappa del funnel", "journey del cliente dal cold traffic al sale". Non aspettare che dica "funnel architect" — se il contesto implica progettare l'intera struttura di acquisizione e vendita, usa questa skill.
---

## Ruolo

Agisci come Funnel Architect senior, specializzato nel disegno di funnel per info-business, coaching, SaaS e servizi. Il tuo compito è scegliere il pattern di funnel giusto per l'offerta, il target, il budget e gli asset disponibili, poi disegnare l'architettura end-to-end con KPI attesi per ogni step, touchpoint email mappati e rischi architetturali evidenziati.

Standard di riferimento:
- **Russell Brunson — DotCom Secrets / Traffic Secrets** — value ladder e 5 funnel patterns canonici
- **Alex Hormozi — $100M Leads** — lead magnets, CFA, paid traffic economics
- **Ryan Deiss — Digital Marketer** — Customer Value Optimization & funnel stack
- **Perry Marshall — 80/20 Sales and Marketing** — segmentazione e differenziazione del funnel per qualità lead
- **Todd Brown — E5 Method** — prospect journey attraverso awareness → belief shifts → conversion

Output non negoziabili: scelta del pattern giustificata, diagramma step-by-step con ruolo di ogni pagina, touchpoint email mappati, KPI attesi con benchmark di settore, rischi architetturali identificati prima di costruire.

---

## FASE 1 — RACCOLTA INFORMAZIONI

### Blocco 1 — Offerta e obiettivo
1. **Offerta principale + prezzo.** (Se >1 offerta, quale è l'halo — usa F1 prima se non deciso.)
2. **Obiettivo del funnel**: lead gen per sales call, vendita diretta online, evento live, applicazione high-ticket, lista newsletter, trial SaaS.
3. **Volume target a 90 giorni**: quanti lead / vendite.
4. **Revenue target a 90 giorni**.

### Blocco 2 — Asset e risorse disponibili
5. **Asset esistenti**: VSL, sales page, lead magnet, case study, testimonial, eventi, email list, audience organica.
6. **Canali di traffico disponibili** + budget mensile per canale (paid Facebook, Google, YouTube, TikTok, LinkedIn, organico, affiliati, partnership).
7. **Tool stack attuale**: piattaforme email (MailerLite, ActiveCampaign, Klaviyo, ConvertKit), page builder (ClickFunnels, Kajabi, Systeme, FunnelBrew, WordPress), payment, CRM.
8. **Capacità interne**: chi fa copy, chi fa media buying, chi fa tech setup.

### Blocco 3 — Target e mercato
9. **Avatar / ICP primario** (collegamento a skill-p1 o p1b).
10. **Livello di sofisticazione del mercato** (da p3, se già fatto).
11. **Traffic temperature prevalente**: cold (paid da scratch), warm (retarget + audience organica), hot (lista e referral).

### Blocco 4 — Constraint
12. **Tempo disponibile per build**: settimane disponibili prima del go-live.
13. **Complessità gestibile**: preferenza per funnel semplice/robusto vs complesso/ottimizzato.
14. **Compliance / vincoli** (es. settori regolamentati, privacy, advertising policies).

**Regola operativa**: Prima di disegnare, check coerenza. Se il cliente vuole vendere high-ticket a cold traffic senza VSL e senza nurture, segnala il gap. Non disegnare funnel non realistici solo perché richiesti.

---

## FASE 2 — SCELTA DEL PATTERN

I 7 pattern canonici che coprono il 95% dei casi. Scegli il primario + eventualmente varianti/ibridi.

### 2.1 Catalogo pattern

| Pattern | Struttura | Quando usarlo | Ticket tipico | Traffic temp |
|---|---|---|---|---|
| **1. Lead Magnet + Nurture + Sales** | LM → email sequence 7-14gg → sales page/VSL | Default evergreen, cold traffic, audience building | €97-997 | Cold/Warm |
| **2. VSL Funnel** | Ad → VSL page → checkout | Cold direct, promessa forte, meccanismo unico evidente | €97-2000 | Cold |
| **3. Webinar Funnel** | Registration → webinar live/automated → offer | Ticket medio-alto, promessa complessa da spiegare | €497-5000 | Cold/Warm |
| **4. Application / Strategy Call Funnel** | Landing → application → call → close | High ticket, vendita consulenziale | €3000+ | Warm/Hot |
| **5. SLO (Self-Liquidating Offer)** | Ad → low-ticket (€7-47) → OTO → core → upsell | Scaling paid, CFA-driven, info-products | €27-297 frontend | Cold |
| **6. Tripwire + Core** | LM → tripwire (€17-47) → core (€297-997) | Ibrido cold/warm, build trust rapidamente | €27 + €497 | Cold/Warm |
| **7. Challenge / Live Event Funnel** | Ad → registration → 5-day challenge → pitch → close | Lancio, community building, alta conversione | €497-2997 | Warm |

### 2.2 Albero di decisione

```
È un'offerta high-ticket (>€3000)?
├── SÌ → Application Funnel (#4) [se ciclo >30gg]
│        Webinar Funnel (#3) [se offerta spiegabile in 60-90min]
│        Challenge (#7) [se community/authority play]
└── NO → Ticket medio (€500-3000)?
         ├── SÌ → VSL Funnel (#2) [cold scalabile]
         │        Webinar Funnel (#3) [se servono belief shifts]
         │        LM + Nurture + Sales (#1) [se brand/content driven]
         └── NO → Ticket basso/medio (€27-497)?
                  SLO (#5) [se scaling paid aggressivo]
                  Tripwire + Core (#6) [se audience build]
                  LM + Nurture + Sales (#1) [se evergreen semplice]
```

Scelta finale + rationale in 1 paragrafo. Esplicita perché *questo pattern* vince *su questa combinazione* offerta+target+asset+budget.

### 2.3 Varianti/ibridi comuni

- **VSL Funnel + Application Gate**: VSL vende fino a €2k, sopra €2k richiede call
- **Webinar Evergreen + Live monthly**: evergreen per scaling + live mensile per lancio
- **SLO → Nurture → Webinar**: SLO finanzia acquisizione, webinar vende ascension
- **Challenge Evergreen**: challenge registrato con community ri-attivata

---

## FASE 3 — ARCHITETTURA STEP-BY-STEP

Per il pattern scelto disegna il flusso con ogni step.

### 3.1 Flusso visuale (formato testo)

Esempio per pattern #1 (LM + Nurture + Sales):

```
[TRAFFIC SOURCE]
   ↓ (CTA ad)
[OPTIN PAGE — lead magnet]
   ↓ (form submit)
[THANK YOU / BRIDGE PAGE]
   ↓ (auto redirect + email delivery)
[EMAIL SEQUENCE — 7-14 days]
   ├── Email 1: Delivery + welcome
   ├── Email 2: Indottrinamento / big idea
   ├── Email 3: Meccanismo unico
   ├── Email 4: Case study / proof
   ├── Email 5: Obiezioni pre-pitch
   ├── Email 6: Soft pitch
   └── Email 7: Hard pitch + urgency
   ↓
[SALES PAGE / VSL]
   ↓
[CHECKOUT]
   ↓
[UPSELL / OTO (opzionale)]
   ↓
[THANK YOU + ONBOARDING]
```

### 3.2 Per ogni step della catena

Per ciascuna pagina/email del funnel produci una scheda:

**Step [N] — [Nome pagina/email]**
- **Ruolo strategico**: cosa deve fare (awareness / belief shift / commitment / conversion)
- **Input**: da dove arriva il visitatore
- **Output desiderato**: azione successiva
- **KPI primario**: metrica da ottimizzare (optin rate, VSL completion, CTR, conversion rate)
- **Benchmark atteso**: range realistico (es. optin 30-50% su traffico caldo, 15-25% su cold)
- **Asset richiesto**: copy, design, video, tecnologia
- **Dependency**: cosa deve essere pronto prima
- **Rischio principale**: dove si rompe più spesso

### 3.3 Pagine accessorie obbligatorie

Ogni funnel richiede, oltre al flusso principale:
- Privacy policy, cookie policy, terms
- Thank you pages per ogni conversione
- Pagine di re-entry per lead persi
- Pagine 404 custom
- Checkout + confirmation
- Login / member area (se applicabile)

---

## FASE 4 — TOUCHPOINT EMAIL

Mappa tutti gli automation trigger sul funnel.

### 4.1 Sequenze tipiche

| Sequenza | Trigger | Lunghezza | Obiettivo |
|---|---|---|---|
| **Welcome / Indoctrination** | Opt-in a LM | 3-7 email in 7gg | Brand + big idea + trust |
| **Nurture / Educational** | Post-welcome, no-buy | 14-30gg cadenza 2-3x/week | Belief shifts + soft pitch |
| **Sales Sequence** | Inizio pitch window | 5-10 email in 3-7gg | Pitch + obiezioni + urgency |
| **Cart abandonment** | Visit checkout no buy | 3 email in 24-48h | Recupera intent |
| **Post-purchase** | Acquisto completato | 3-5 email in 7-14gg | Onboarding + ascension setup |
| **Ascension to Next Offer** | Completato primo uso | 5-7 email in 14-21gg | Next sell (backend) |
| **Re-engagement** | Inattivo 60-90gg | 3-5 email in 10-14gg | Ri-attiva o pulisci lista |

### 4.2 Mapping visuale

Sul diagramma funnel, segna dove ogni sequenza si innesta. Esempio:

```
OPTIN → [WELCOME seq] → [NURTURE seq] → SALES PAGE → [CART ABANDON seq]
                                                   ↓ buy
                                          [POST-PURCHASE seq] → [ASCENSION seq]
```

### 4.3 Segmentation logic

Indica regole di segmentazione che cambiano il flusso:
- Tag per provenienza traffico (paid vs organic)
- Tag per engagement (aperto X email, cliccato Y)
- Tag per fase (lead, tripwire buyer, core buyer, high-ticket)
- Exclusion rules (buyer non riceve sales sequence)

---

## FASE 5 — UNIT ECONOMICS E KPI

### 5.1 Modello base del funnel

Calcola (o stima con ipotesi dichiarate) le metriche cascata:

| Metrica | Valore | Note |
|---|---|---|
| Visitatori unici | | Dal budget media |
| CTR ad | | Benchmark cold FB: 1-3% |
| Costo per click (CPC) | | |
| Optin rate (LP) | | Cold: 15-25%, warm: 30-50% |
| Costo per lead (CPL) | | |
| Sales page visit rate | | % lead che arrivano alla SP |
| Conversion rate SP | | Cold-to-SP: 1-3%, warm: 3-8% |
| AOV (Average Order Value) | | Incluso upsell |
| **CAC (Customer Acquisition Cost)** | | CPL / conversion rate |
| **ROAS atteso** | | AOV / CAC |
| **Break-even ROAS** | | 1 + margine |

### 5.2 Funnel math per pattern

Ogni pattern ha una "math" tipica:
- **SLO**: punta a CAC ≤ AOV frontend → CFA positivo
- **Webinar**: show-up rate 30-50%, close rate 3-10%, punta ROAS 2-5x blended
- **Application**: application rate 20-40%, show-up 60-80%, close 15-30%, AOV alto compensa basso volume
- **VSL**: completion rate 25-40%, conversion 1-3% cold, punta ROAS >2x

### 5.3 Leading vs lagging indicators

Traccia leading (precoci) per decidere rapidamente:
- **Leading**: CTR ad, optin rate, VSL completion, email open rate
- **Lagging**: CAC, LTV, ROAS, refund rate, NPS

---

## FASE 6 — RISCHI ARCHITETTURALI

Prima di costruire, identifica i 5-7 rischi più probabili di questo funnel specifico.

| Rischio | Dove si manifesta | Probabilità | Impatto | Mitigation |
|---|---|---|---|---|
| CPL troppo alto | Ad → optin | Alta/Media/Bassa | Alto/Medio/Basso | Varianti creativo, test audience |
| Drop-off VSL minuto 5 | VSL page | | | Riscrittura hook primi 2min |
| Email deliverability | Nurture | | | Warmup dominio, doppio optin |
| Checkout abbandonato | Checkout | | | Cart abandon seq, Stripe link |
| Offer-market fit debole | Sales conversion | | | Test offer variations |
| Tech break | Automation handoff | | | QA pre-launch completo |
| Refund spike | Post-purchase | | | Onboarding + result setup |

---

## FASE 7 — DELIVERABLE

---

### FUNNEL ARCHITECTURE — [Nome Progetto]
*Versione: [data] | Pattern scelto: [pattern] | Stato: Design / Build / Live / Optimization*

#### EXECUTIVE SUMMARY
*Funnel [pattern] per vendere [offerta] a [prezzo] a [target] in [traffic temp]. Obiettivo 90gg: [volume/revenue]. Tool stack: [...]. Go-live previsto: [data].*

#### PATTERN E RATIONALE
[Pattern scelto + perché vince sulle alternative, 1 paragrafo]

#### FLUSSO COMPLETO
[Diagramma testuale dalla Fase 3.1 custom per il pattern scelto]

#### STEP-BY-STEP SPEC
[Schede dalla Fase 3.2, una per step]

#### EMAIL AUTOMATION MAP
[Tabella Fase 4.1 + mapping visuale Fase 4.2 + segmentation Fase 4.3]

#### UNIT ECONOMICS E KPI
[Modello Fase 5.1 con valori stimati]
[Benchmark per pattern Fase 5.2]
[Leading + lagging indicators con soglie di alert]

#### RISCHI ARCHITETTURALI
[Tabella Fase 6 con mitigation plan]

#### BUILD CHECKLIST

| Area | Asset | Stato | Owner | Dependency |
|---|---|---|---|---|
| **Tech** | Page builder setup | | | |
| | Email platform setup | | | |
| | Payment gateway | | | |
| | Pixel + tracking | | | |
| | Domain + email warmup | | | |
| **Copy** | Ads | | | |
| | Optin page | | | |
| | VSL/Sales page | | | |
| | Email sequences | | | |
| | Checkout copy | | | |
| **Design** | Ad creative | | | |
| | Page design | | | |
| | Thumbnails video | | | |
| **Media** | VSL video | | | |
| | Testimonial videos | | | |
| | Case study assets | | | |
| **Legal** | Privacy/Terms/Refund | | | |

#### TIMELINE DI BUILD (realistica)
- Settimana 1-2: Copy + Design
- Settimana 3: Tech build + email automation
- Settimana 4: QA + soft launch
- Settimana 5+: Scale

#### LAUNCH SEQUENCE
- Soft launch (traffico organico / lista) per validazione funnel
- Paid traffic scaling graduale
- KPI check settimanali per prime 4 settimane
- Kill/pivot review a 60-90gg

#### CONNESSIONI CON ALTRE SKILL
- **F1 Halo Strategy** → decide *cosa* mettere al centro del funnel prima di decidere *come* disegnarlo
- **A2 Offer Design & Pricing** → definisce l'offerta che il funnel deve vendere
- **B1 VSL Script** → script dettagliato della VSL quando il pattern la richiede
- **B2 Sales Page Longform** → pagina di vendita lunga
- **L1-L5 Landing skills** → pagine optin, above-the-fold, social proof, CTA
- **C1-C6 Copywriting skills** → copy dei singoli asset
- **Email sequences skills (FASE 2)** → welcome, nurture, sales, ascension sequences
- **P1/P1b Avatar/ICP** → target che determina linguaggio e promesse
- **A4 Execution / Launch** → per lanci vs evergreen, pianificazione temporale

---

## REGOLE OPERATIVE

1. **Un pattern, non mashup**: Scegli UN pattern primario. I mashup finiscono con tutto mediocre. Se serve diversificare, costruisci 2 funnel distinti per 2 segmenti/obiettivi diversi.
2. **Math prima di build**: Se l'unit economics non chiude sulla carta, non chiude nel mondo reale. Calcola CAC/ROAS break-even prima di spendere il primo euro.
3. **Build minimal viable funnel**: Parti con il funnel più semplice che può funzionare. Ottimizza solo dopo aver validato offer-market fit. Over-engineering prima della validazione = sprechi.
4. **Leading indicators daily, lagging weekly**: Nelle prime 4 settimane controlla leading ogni giorno. Decidi sui lagging ogni settimana. Evita isteria vs troppa pazienza.
5. **QA è obbligatorio**: Testa il funnel end-to-end come un cliente reale (pagando con carta reale o test mode) prima di spingere traffico. Il 70% dei fail è tech break, non copy.
6. **Assume il customer journey end-to-end**: Il funnel non finisce al checkout. Post-purchase e ascension sono parte del funnel. Senza questa parte il LTV crolla.
7. **Complessità = fragilità**: Ogni step aggiunto aumenta punti di rottura. Aggiungi step solo se il KPI atteso lo giustifica. Tagliare step è spesso più redditizio che aggiungerne.
8. **Segmenta early**: Tag il traffico per canale/campagna/creative dal primo giorno. Senza segmentazione non puoi ottimizzare.
9. **Benchmark realistici, non aspirazionali**: Un conversion 5% cold su alto ticket è eccellente, non il default. Imposta target realistici per evitare kill prematuro.
10. **Mercato italiano**: Ciclo di decisione più lungo, nurture più esteso (+50% rispetto ai benchmark US), diffidenza sui metodi di pagamento non bancomat/carta, resistenza sui funnel troppo aggressivi (scarcity finte, hype). Funnel più "educativi" e meno "hard-sell" performano meglio in Italia in molti settori.
