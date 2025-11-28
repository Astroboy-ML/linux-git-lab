#!/usr/bin/env bash

# Simple backup script
# Sauvegarde le dossier /home/martin dans ~/backups avec timestamp

BACKUP_DIR="$HOME/backups"
SOURCE_DIR="$HOME"
DATE=$(date +'%Y-%m-%d_%H-%M-%S')
ARCHIVE="$BACKUP_DIR/home-backup-$DATE.tar.gz"

# Créer le dossier de backup s'il n'existe pas
mkdir -p "$BACKUP_DIR"

# Créer l'archive
tar -czf "$ARCHIVE" "$SOURCE_DIR"

echo "Backup créé : $ARCHIVE"
