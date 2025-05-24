# Protocollo di Comunicazione per il Progetto "Drink Digitali"

Questo documento definisce il linguaggio strutturato e i comandi mnemonici da utilizzare nelle conversazioni per il progetto "Drink Digitali". Questo protocollo standardizzato permette una comunicazione efficiente, non ambigua e facilmente riconoscibile.

## Struttura Base dei Comandi

Tutti i comandi seguono questa struttura di base:

```
#TAG: PARAMETRO
#DETTAGLI

[Corpo della richiesta]

#FINE
```

- **TAG**: Identifica il tipo di comando (agente, server MCP, operazione)
- **PARAMETRO**: Specifica l'istanza o la variante del comando
- **DETTAGLI**: (Opzionale) Fornisce dettagli aggiuntivi o specificazioni
- **Corpo della richiesta**: Il contenuto effettivo della richiesta
- **#FINE**: (Opzionale) Marca la fine del comando, utile per comandi multipli

## Comandi per gli Agenti

### Attivazione degli Agenti
Per attivare un agente specifico:

```
#AGENTE: [CODICE_AGENTE]
#COMPITO: [TIPO_COMPITO]

[Descrizione dettagliata del compito]

#FINE
```

Codici Agente disponibili:
- **MIXO**: Agente Mixologist (ricette)
- **NARR**: Agente Narrativo (storytelling)
- **EDIT**: Agente Editor (revisione)
- **KDPP**: Agente KDP (pubblicazione)
- **VISU**: Agente Visual (design)
- **COORD**: Agente Coordinator (gestione)

Esempi di tipo compito:
- **CREA**: Creazione di nuovo contenuto
- **REVEDI**: Revisione/modifica di contenuto esistente
- **ANALISI**: Analisi di contenuto o situazione
- **PIANO**: Pianificazione strategica

Esempio:
```
#AGENTE: MIXO
#COMPITO: CREA

Sviluppa una ricetta di drink analcolico ispirato al concetto di intelligenza artificiale, con riferimenti specifici alle reti neurali.

#FINE
```

### Comandi Multi-Agente

Per compiti che richiedono competenze di più agenti:

```
#AGENTE: [CODICE_AGENTE1]+[CODICE_AGENTE2]
#COMPITO: [TIPO_COMPITO]

[Descrizione dettagliata del compito]

#FINE
```

Esempio:
```
#AGENTE: MIXO+NARR
#COMPITO: CREA

Sviluppa una ricetta di drink analcolico ispirato al debugging, collegandola a un aneddoto personale su come la risoluzione di un bug tecnico possa essere metafora di come affrontare le sfide della sobrietà.

#FINE
```

## Comandi per Server MCP

### Server Filesystem

```
#MCP: FS_[OPERAZIONE] [PERCORSO]
#PARAMETRI: [PARAMETRI_OPZIONALI]

[Contenuto da salvare, se applicabile]

#FINE
```

Operazioni disponibili:
- **READ**: Legge il contenuto del file
- **WRITE**: Scrive/sovrascrive un file
- **APPEND**: Aggiunge contenuto a un file esistente
- **LIST**: Elenca i file in una directory
- **CREATE_DIR**: Crea una nuova directory
- **DELETE**: Elimina un file o directory (usare con cautela)

Esempio:
```
#MCP: FS_WRITE content/recipes/ai-fusion.md

# AI Fusion

## AI Collaborator: Claude
[Contenuto della ricetta qui...]

#FINE
```

### Server Memory

```
#MCP: MEM_[OPERAZIONE] [CHIAVE]

[Contenuto da memorizzare, se applicabile]

#FINE
```

Operazioni disponibili:
- **STORE**: Memorizza un'informazione
- **RECALL**: Recupera un'informazione memorizzata
- **LIST**: Elenca le chiavi memorizzate
- **DELETE**: Elimina una chiave dalla memoria

Esempio:
```
#MCP: MEM_STORE capitoli_completati

- Introduzione
- Capitolo 1: Il mondo digitale nei bicchieri
- Capitolo 2: Algoritmi di sapore

#FINE
```

### Server Sequential Thinking

```
#MCP: SEQ_THINK [PROBLEMA]

[Descrizione del problema da analizzare sequenzialmente]

#FINE
```

Esempio:
```
#MCP: SEQ_THINK sviluppo_capitolo_3

Come dovremmo strutturare il capitolo sulle ricette ispirate ai linguaggi di programmazione, considerando progressione di complessità, varietà di sapori e collegamenti narrativi?

#FINE
```

## Comandi di Controllo del Progetto

### Stato Progetto

```
#PROGETTO: STATO

[Parametri opzionali per specificare quale aspetto]

#FINE
```

Esempio:
```
#PROGETTO: STATO
#CAPITOLO: 3

Fornisci lo stato attuale del Capitolo 3, inclusi contenuti completati, in progress e da iniziare.

#FINE
```

### Integrazione Contenuti Esterni

Per integrare contenuti provenienti da ChatGPT:

```
#EXTERN: CHATGPT
#TIPO: [TIPO_CONTENUTO]

[Contenuto da ChatGPT qui]

#FINE
```

Esempio:
```
#EXTERN: CHATGPT
#TIPO: RICETTA

# Quantum Quencher

[Contenuto della ricetta generato da ChatGPT...]

#FINE
```

## Comandi Compositi

I comandi possono essere combinati per operazioni più complesse:

```
#MCP: FS_READ content/recipes/ai-fusion.md

#AGENTE: EDIT
#COMPITO: REVEDI

Rivedi la ricetta che hai appena letto, migliorando la precisione tecnica dei riferimenti all'AI e la chiarezza delle istruzioni di preparazione.

#FINE
```

## Note Sull'Utilizzo

1. **Coerenza**: Mantenere la struttura dei comandi coerente per facilitare il riconoscimento automatico.

2. **Specificità**: Essere il più specifici possibile nei parametri e nelle descrizioni.

3. **Combinazione**: I comandi possono essere combinati per operazioni complesse, ma è consigliabile limitare la complessità per evitare ambiguità.

4. **Priorità**: In caso di comandi conflittuali, l'ultimo ha precedenza a meno che non sia specificato diversamente.

5. **Flessibilità**: Questo protocollo è pensato per essere efficiente ma non rigido; può evolversi durante il progetto se necessario.

Seguendo questo protocollo di comunicazione, si ottimizzerà l'efficienza del lavoro sul progetto "Drink Digitali", riducendo ambiguità e migliorando la precisione delle interazioni.