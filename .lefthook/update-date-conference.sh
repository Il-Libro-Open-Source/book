#!/bin/bash
set -e

FILE="conferenze.md"

# Controlla se il file esiste
if [ ! -f "$FILE" ]; then
    echo "❌ File $FILE non trovato"
    exit 0
fi

# Controlla se il file è staged (aggiunto al commit)
if ! git diff --cached --name-only | grep -q "^$FILE$"; then
    echo "ℹ️  $FILE non è stato modificato in questo commit"
    exit 0
fi

# Controlla se il file è già tracciato da git
if git ls-files --error-unmatch "$FILE" >/dev/null 2>&1; then
    # File già tracciato - usa git diff normale
    if git diff --cached "$FILE" | grep -v "aggiornato al" | grep -q "^[+-]"; then
        echo "🔄 Contenuto di $FILE modificato, aggiorno la data..."
        update_date=true
    else
        echo "ℹ️  Solo la data è cambiata in $FILE, nessun aggiornamento necessario"
        update_date=false
    fi
else
    # File nuovo - aggiorna sempre la data
    echo "🔄 Nuovo file $FILE rilevato, aggiorno la data..."
    update_date=true
fi

# Aggiorna la data se necessario
if [ "$update_date" = true ]; then
    current_date=$(date '+%Y-%m-%d')
    sed -i -E "s/(aggiornato al )[0-9]{4}-[0-9]{2}-[0-9]{2}/\1$current_date/g" "$FILE"
    
    git add "$FILE"
    echo "✅ Data aggiornata a $current_date in $FILE"
fi