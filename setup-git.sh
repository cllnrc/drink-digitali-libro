#!/bin/bash
# Script per setup repository Git - Progetto Drink Digitali

echo "=== SETUP GIT REPOSITORY ==="

# Inizializza repository Git se non esiste
if [ ! -d ".git" ]; then
    echo "Inizializzando repository Git..."
    git init
    echo "✅ Repository Git inizializzato"
else
    echo "✅ Repository Git già esistente"
fi

# Aggiungi remote origin (sostituisci con il tuo URL se diverso)
echo "Configurando remote origin..."
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/clnrc/drink-digitali-libro.git

# Verifica remote
echo "Remote configurati:"
git remote -v

# Configura branch principale
echo "Configurando branch main..."
git checkout -b main 2>/dev/null || git checkout main

# Aggiungi tutti i file
echo "Aggiungendo file al staging..."
git add .

# Commit iniziale
echo "Creando commit iniziale..."
git commit -m "Initial commit: Setup progetto Drink Digitali

- Documenti di progetto completi
- Struttura filesystem definita
- Agent definitions e communication protocol
- Template ricette e profilo autore
- MCP server configuration"

# Pull con merge di storie non correlate
echo "Sincronizzando con repository remoto..."
git pull origin main --allow-unrelated-histories

# Push finale
echo "Caricando su GitHub..."
git push -u origin main

echo "=== SETUP COMPLETATO! ==="
