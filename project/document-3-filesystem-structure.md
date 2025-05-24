# Struttura del Filesystem per il Progetto "Drink Digitali / Digital Drinks"

Questo documento definisce l'organizzazione completa del filesystem per il progetto bilingue "Drink Digitali / Digital Drinks", spiegando la logica, la struttura e le convenzioni di denominazione per le directory e i file in formato italiano-inglese affiancato.

## Struttura Principale Bilingue

```
/content/
├── chapters-bilingual/
│   ├── 01-introduction-it-en.md
│   ├── 02-digital-foundations-it-en.md
│   └── ...
├── recipes-bilingual/
│   ├── recipe-01-neural-nectar-it-en.md
│   ├── recipe-02-quantum-quencher-it-en.md
│   └── ...
├── appendix-bilingual/
│   ├── glossary-it-en.md
│   ├── equipment-it-en.md
│   └── ingredients-it-en.md
└── 00-prefazione-it-en.md

/assets/
├── images/
│   ├── drinks/
│   ├── diagrams/
│   └── layout-samples/
└── graphics/
    ├── icons/
    ├── decorative/
    └── bilingual-elements/

/publish/
├── metadata-bilingual.md
├── kdp-settings-it.md
├── kdp-settings-en.md
└── layout-specifications.md

/project/
├── bilingual-strategy.md
├── translation-guidelines.md
├── outline-bilingual.md
├── progress-bilingual.md
└── templates/
    ├── recipe-template-bilingual.md
    ├── chapter-template-bilingual.md
    └── layout-template.md
```

## Logica Organizzativa Bilingue

La struttura è progettata secondo i seguenti principi:

1. **Formato bilingue integrato**: Ogni file contiene sia la versione italiana che inglese, organizzate per layout affiancato (pagina sinistra IT, pagina destra EN).

2. **Separazione di contenuto ed elementi tecnici**: Il contenuto effettivo del libro è separato dagli elementi di supporto come metadati e tracciamento, ma entrambi gestiscono il formato bilingue.

3. **Organizzazione tematica bilingue**: I contenuti sono organizzati per tipo (capitoli, ricette, appendici) con denominazione esplicita bilingue.

4. **Nomenclatura coerente cross-language**: Le convenzioni di denominazione includono identificatori "-it-en" per facilitare gestione e navigazione.

5. **Accessibilità internazionale**: La struttura facilita lo sviluppo simultaneo in entrambe le lingue e la produzione del layout finale affiancato.

6. **Workflow parallelo**: Supporta sviluppo, traduzione e revisione integrate per entrambe le versioni linguistiche.

## Dettaglio delle Directory

### /content/
Contiene tutto il contenuto effettivo del libro, suddiviso in tre sottocategorie principali:

#### /content/chapters-bilingual/
I capitoli del libro in formato bilingue, ciascuno in un file markdown con contenuto italiano e inglese affiancato:
- **01-introduction-it-en.md**: Introduzione che presenta il concetto del libro (IT + EN)
- **02-digital-foundations-it-en.md**: Fondamenti digitali (IT + EN)
- **03-...**: Ciascun capitolo successivo, numerato progressivamente

**Convenzioni di denominazione**: `XX-nome-capitolo-it-en.md`, dove XX è un numero a due cifre e "-it-en" indica formato bilingue.

**Logica interna bilingue**: Ciascun file capitolo segue questa struttura:
1. **Titolo bilingue**: Italiano | English
2. **Introduzione parallela**: Hook narrativo in entrambe le lingue
3. **Tema tecnologico**: Spiegazione concetti IT-EN
4. **Esperienza personale**: Adattata culturalmente per entrambi i mercati
5. **Transizione ricette**: Bridge alle ricette bilingue
6. **Conclusione**: Collegamento al capitolo successivo (IT+EN)

#### /content/recipes-bilingual/
Le ricette individuali in formato bilingue, ciascuna in un file markdown con versione italiana e inglese:
- **recipe-01-neural-nectar-it-en.md**: Prima ricetta completa (IT + EN)
- **recipe-02-quantum-quencher-it-en.md**: Seconda ricetta, ecc.

**Convenzioni di denominazione**: `recipe-XX-nome-ricetta-it-en.md`, dove XX è un numero progressivo a due cifre e "-it-en" indica formato bilingue.

**Logica interna bilingue**: Ciascun file ricetta segue il template bilingue definito in `/project/templates/recipe-template-bilingual.md`, con layout affiancato per tutte le sezioni.

#### /content/appendix-bilingual/
Materiale supplementare bilingue che arricchisce il libro:
- **glossary-it-en.md**: Glossario termini tecnici e mixology (IT + EN)
- **equipment-it-en.md**: Guida attrezzatura necessaria (IT + EN)  
- **ingredients-it-en.md**: Guida ingredienti speciali (IT + EN)
- Altri file di appendice secondo necessità

**Convenzioni di denominazione**: `nome-appendice-it-en.md` in minuscolo con trattini tra le parole e suffisso bilingue.

### /assets/
Contiene riferimenti a elementi visivi del libro:

#### /assets/images/
- **/assets/images/drinks/**: Riferimenti a fotografie delle bevande
- **/assets/images/diagrams/**: Diagrammi esplicativi e infografiche

#### /assets/graphics/
- **/assets/graphics/icons/**: Icone utilizzate nel libro
- **/assets/graphics/decorative/**: Elementi decorativi

**Convenzioni di denominazione**: `nome-descrittivo-elemento.tipo` in minuscolo con trattini tra le parole.

### /publish/
Contiene elementi necessari per la pubblicazione su KDP:
- **metadata.md**: Metadati del libro (titolo, sottotitolo, descrizione, autore, ecc.)
- **kdp-settings.md**: Impostazioni specifiche per KDP (prezzo, categorie, keywords, ecc.)

### /project/
Contiene documenti di supporto per la gestione del progetto:
- **outline.md**: La struttura completa del libro
- **progress.md**: Tracciamento del progresso e stato attuale
- **/project/templates/**: Template standardizzati
  - **recipe-template.md**: Template per le ricette
  - **chapter-template.md**: Template per i capitoli

## Convenzioni di Denominazione Generali

1. **File**: Nomi in minuscolo con parole separate da trattini (kebab-case)
   - Esempio: `neural-network-nectar.md`

2. **Numerazione**: Quando applicabile, utilizzare numeri a due cifre con zero iniziale per i numeri sotto il 10
   - Esempio: `01-introduction.md`, `recipe-05-binary-brew.md`

3. **Estensioni**: Utilizzare `.md` (Markdown) per tutti i file di contenuto e documentazione

4. **Caratteri speciali**: Evitare l'uso di caratteri speciali, spazi o punteggiatura nei nomi dei file (ad eccezione dei trattini)

## Organizzazione dei Capitoli

Il libro seguirà questa struttura capitolare preliminare:

1. **Introduzione**: Presentazione del concetto, storia personale, motivazioni
2. **Fondamenti Digitali**: Ricette ispirate ai concetti base dell'informatica
3. **Linguaggi e Paradigmi**: Drink ispirati ai linguaggi di programmazione
4. **Architetture e Sistemi**: Ricette che riflettono architetture di sistema
5. **Intelligenza Artificiale**: Drink ispirati all'AI e al machine learning
6. **Interfacce e User Experience**: Ricette che rappresentano l'interazione uomo-macchina
7. **Privacy e Sicurezza**: Drink che simboleggiano concetti di sicurezza informatica
8. **Futuro Tecnologico**: Ricette sperimentali che guardano alle tecnologie emergenti
9. **Appendici**: Glossario, attrezzatura, ingredienti speciali

## Gestione dei Link Interni

Per facilitare i riferimenti incrociati all'interno del libro:

1. **Link a capitoli**: `[Titolo Capitolo](../chapters/XX-nome-capitolo.md)`
2. **Link a ricette**: `[Nome Ricetta](../recipes/recipe-XX-nome-ricetta.md)`
3. **Link ad appendici**: `[Nome Appendice](../appendix/nome-appendice.md)`

## Gestione delle Versioni

Questo filesystem è progettato per funzionare con GitHub per il controllo versione:

1. **Main**: Rappresenta la versione attuale "ufficiale" del libro
2. **Draft**: Per contenuti in fase di elaborazione
3. **Feature branches**: Per sviluppi specifici (es. `feature/new-chapter-5`)

## Note Operative

1. I file di contenuto devono essere salvati nelle rispettive directory appena completati
2. Il file `progress.md` deve essere aggiornato dopo ogni sessione di lavoro significativa
3. Utilizzare il server MCP filesystem per tutte le operazioni sui file
4. I template devono essere seguiti per garantire coerenza in tutto il libro
5. I file e le directory qui descritti verranno creati progressivamente secondo necessità

Questa struttura filesystem è progettata per essere intuitiva, scalabile e facilmente navigabile, supportando efficacemente lo sviluppo del libro "Drink Digitali" dall'ideazione alla pubblicazione.