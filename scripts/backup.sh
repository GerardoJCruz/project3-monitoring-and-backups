#!/bin/bash
# Simple backup script

#Variables

SOURCE_DIR="/etc"
BACKUP_DIR="$HOME/backups"
DATE=$(date +%F)
BACKUP_FILE="$BACKUP_DIR/backup-$DATE.tar.gz"
LOG_FILE="$BACKUP_DIR/backup.log"

#Create compressed archive
mkdir -p "$BAKCUP_DIR"
tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2>>"$LOG_FILE"

#Log result
if [ $? -eq 0 ]; then
	echo "$(date): Backup successful: $BACKUP_FILE" >> "$LOG_FILE"
else 
	echo "$(date): Backup failed" >> "$LOG_FILE"
fi
