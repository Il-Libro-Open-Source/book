#!/bin/bash
set -e

FILE="docs/it/formazione/conferenze.md"

if git diff --name-only --cached | grep -q "$FILE" || git diff --name-only | grep -q "$FILE"; then
    echo "🔄 $FILE modificato, aggiorno la data..."
    
    if git ls-files --error-unmatch "$FILE" >/dev/null 2>&1; then
        old_content=$(git show HEAD:"$FILE" 2>/dev/null | grep -v "_Aggiornato al" || echo "")
        new_content=$(grep -v "Aggiornato al" "$FILE" 2>/dev/null || echo "")
        
        if [ "$new_content" != "$old_content" ]; then
            current_date=$(date '+%Y-%m-%d')
            # Semplice sostituzione senza gruppi
            sed -i '' "s/Aggiornato al [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]/Aggiornato al $current_date/g" "$FILE"
            
            git add "$FILE"
            echo "✅ Data aggiornata a $current_date"
        else
            echo "ℹ️  Nessuna modifica sostanziale rilevata"
        fi
    else
        current_date=$(date '+%Y-%m-%d')
        sed -i '' "s/Aggiornato al [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]/Aggiornato al $current_date/g" "$FILE"
        git add "$FILE"
        echo "✅ Data aggiornata a $current_date (nuovo file)"
    fi
else
    echo "ℹ️  $FILE non modificato in questo commit"
fi