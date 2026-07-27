# Knowledge Base di Marketing · {{BRAND}}

> Questa cartella E la knowledge base di marketing di {{BRAND}}. Se sei un'AI e la
> stai leggendo, questo file e il tuo contratto d'uso: leggilo prima di pescare.
> Generata dal sistema morfeus-marketing-kb il {{DATE}} · versione KB {{KB_VERSION}}.

## Cos'e questa cartella

Lo strato strategico evergreen del brand: chi e, a chi parla, cosa promette e
perche funziona, cosa vende, come arriva al mercato, con quali prove e quali numeri.
NON e il materiale di un singolo lancio: e la fonte da cui ogni lancio, campagna,
pagina o contenuto pesca.

## Come usarla (regole per l'AI)

1. **Parti dal manifest.** `kb-manifest.yaml` dice, per ogni nodo: path, stato
   (`completo` / `parziale` / `assente` / `non-serve-ancora`) e score. **Fidati solo
   di cio che e `completo`.** Su `parziale` usa con cautela e segnala il buco; su
   `assente`/`non-serve-ancora` NON inventare: chiedi o ometti.
2. **Fonte di verita unica.** Prezzo, promessa, garanzia, bonus, deadline si prendono
   VERBATIM dai nodi indicati sotto (OFR/AST). Non riscriverli, non arrotondarli, non
   dedurli altrove. Se due punti divergono, vince la fonte, e segnala la discrepanza.
3. **Naviga per riferimenti.** I documenti si rimandano tra loro (es. il proof-bank
   cita i pilastri della narrativa). Segui i link, non cercare a caso.
4. **Non modificare la KB di nascosto.** Se produci qualcosa che dovrebbe aggiornare
   un nodo, proponilo: la KB si aggiorna con un nuovo giro di assessment, tracciato.

## La mappa (6 sezioni)

| Cartella | Cosa contiene |
|----------|---------------|
| `FND_fondamenta/` | chi siamo, perche esistiamo, voce, identita visiva |
| `MKT_mercato/` | a chi parliamo, dove giochiamo (ICP, avatar, competitor, VoC) |
| `STR_strategia/` | cosa promettiamo e perche funziona (Big Idea, meccanismo, angoli, message house) |
| `OFR_offerta/` | cosa vendiamo (value ladder, offerte) · **fonte prezzi** |
| `GTM_go-to-market/` | come arriviamo (canali, content, lifecycle, funnel) |
| `AST_asset/` | prove (proof bank) e numeri (unit economics) · **fonte numeri** |

`00_ASSESSMENT/gap-report.md` = la foto dell'ultimo giro: cosa e completo, cosa manca, cosa non serve ancora.

## Fonti di verita (verbatim da qui)

- **Prezzi, garanzia, bonus, deadline** → `OFR_offerta/` (value-ladder, offerte)
- **Numeri, margini, CAC/LTV** → `AST_asset/numeri-baseline.md`
- **Promessa e messaggio core** → `STR_strategia/narrativa.md` (Message House)
- **Chi e il cliente** → `MKT_mercato/` (ICP, avatar)

## Provenienza

- Costruita da: morfeus-marketing-kb
- Data ultimo giro: {{DATE}}
- Stadio dichiarato del business: {{STAGE}}
- Nodi completi: {{N_COMPLETE}}/{{N_ACTIVE}} attivi
