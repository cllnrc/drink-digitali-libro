# Struttura del Filesystem per il Progetto "Drink Digitali"

Questo documento definisce l'organizzazione completa del filesystem per il progetto "Drink Digitali", spiegando la logica, la struttura e le convenzioni di denominazione per le directory e i file.

## Struttura Principale

```
/content/
├── chapters/
│   ├── 01-introduction.md
│   ├── 02-chapter-name.md
│   └── ...
├── recipes/
│   ├── recipe-01-neural-nectar.md
│   ├── recipe-02-synapse-spritz.md
│   └── ...
└── appendix/
    ├── glossary.md
    └── equipment.md

/assets/
├── images/
│   ├── drinks/
│   └── diagrams/
└── graphics/
    ├── icons/
    └── decorative/

/publish/
├── metadata.md
└── kdp-settings.md

/project/
├── outline.md
├── progress.md
└── templates/
    ├── recipe-template.md
    └── chapter-template.md
```

## Logica Organizzativa

La struttura è progettata secondo i seguenti principi:

1. **Separazione di contenuto ed elementi tecnici**: Il contenuto effettivo del libro è separato dagli elementi di supporto come metadati e tracciamento.

2. **Organizzazione tematica**: I contenuti sono organizzati per tipo (capitoli, ricette, appendici) piuttosto che per ordine di creazione.

3. **Nomenclatura coerente**: Le convenzioni di denominazione sono progettate per facilità di navigazione e coerenza.

4. **Accessibilità**: La struttura è pensata per facilitare il ritrovamento rapido di ogni elemento del progetto.

## Dettaglio delle Directory

### /content/
Contiene tutto il contenuto effettivo del libro, suddiviso in tre sottocategorie principali:

#### /content/chapters/
I capitoli del libro, ciascuno in un file markdown separato:
- **01-introduction.md**: Introduzione che presenta il concetto del libro
- **02-...**: Ciascun capitolo successivo, numerato progressivamente

**Convenzioni di denominazione**: `XX-nome-capitolo.md`, dove XX è un numero a due cifre che indica l'ordine dei capitoli.

**Logica interna**: Ciascun file capitolo segue questa struttura:
1. Titolo del capitolo
2. Breve introduzione/narrative hook
3. Tema tecnologico del capitolo
4. Collegamento con l'esperienza personale
5. Transizione alle ricette
6. Conclusione e collegamento al capitolo successivo

#### /content/recipes/
Le ricette individuali, ciascuna in un file markdown separato:
- **recipe-01-neural-nectar.md**: Prima ricetta completa
- **recipe-02-synapse-spritz.md**: Seconda ricetta, ecc.

**Convenzioni di denominazione**: `recipe-XX-nome-ricetta.md`, dove XX è un numero progressivo a due cifre.

**Logica interna**: Ciascun file ricetta segue il template standard definito in `/project/templates/recipe-template.md`.

#### /content/appendix/
Materiale supplementare che arricchisce il libro:
- **glossary.md**: Glossario di termini tecnici e mixology
- **equipment.md**: Guida all'attrezzatura necessaria
- Altri file di appendice secondo necessità

**Convenzioni di denominazione**: `nome-appendice.md` in minuscolo con trattini tra le parole.

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