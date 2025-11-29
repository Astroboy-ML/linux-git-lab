#!/usr/bin/env bash 
# Utilise l'interpréteur Bash du système

LOG_FILE=$1
# Récupère le premier argument passé au script (chemin du fichier log)

# Vérifie qu'un fichier a bien été fourni
if [[ -z "$LOG_FILE" ]]; then
    echo "Usage: $0 <logfile>"
    exit 1
fi

# Vérifie que le fichier existe réellement
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Erreur : fichier introuvable."
    exit 1
fi

echo "===== ANALYSE DU FICHIER $LOG_FILE ====="

# Compte le nombre d'occurrences de chaque type
ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l)
WARNING_COUNT=$(grep -i "warning" "$LOG_FILE" | wc -l)
INFO_COUNT=$(grep -i "info" "$LOG_FILE" | wc -l)

# Affiche les totaux
echo "Erreurs  : $ERROR_COUNT"
echo "Warnings : $WARNING_COUNT"
echo "Infos    : $INFO_COUNT"

echo
echo "===== 10 dernières erreurs ====="
# Affiche les 10 dernières lignes contenant "error"
grep -i "error" "$LOG_FILE" | tail -10

echo "===================================="
# Fin du script
