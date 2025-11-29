#!/usr/bin/env bash
set -euo pipefail

LOG_FILE=${1:-}

if [[ "$LOG_FILE" == "-h" || "$LOG_FILE" == "--help" ]]; then
    echo "Usage: $0 <logfile>"
    echo "Analyse un fichier de log et affiche un résumé (erreurs, warnings, infos)."
    exit 0
fi

if [[ -z "$LOG_FILE" ]]; then
    echo "Usage: $0 <logfile>"
    exit 1
fi

if [[ ! -f "$LOG_FILE" ]]; then
    echo "Erreur : fichier introuvable."
    exit 1
fi

echo "===== ANALYSE DU FICHIER $LOG_FILE ====="

ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l || true)
WARNING_COUNT=$(grep -i "warning" "$LOG_FILE" | wc -l || true)
INFO_COUNT=$(grep -i "info" "$LOG_FILE" | wc -l || true)

echo "Erreurs  : $ERROR_COUNT"
echo "Warnings : $WARNING_COUNT"
echo "Infos    : $INFO_COUNT"

echo
echo "===== 10 dernières erreurs ====="
grep -i "error" "$LOG_FILE" | tail -10 || echo "Aucune erreur trouvée."

echo "===================================="
