#!/bin/bash


############################
# simple backup script
############################


SOURCE_DIR="$1"
BACKUP_DIR="$HOME/backups"
LOG_FILE="$BACKUP_DIR/backup.log"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="backup_${TIMESTAMP}.tar.gz"



if [ -z "$SOURCE_DIR" ]; then
	echo "Usage: $0 /path/to/source_dir"
	exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
	echo "Error: Source directory '$SOURCE_DIR' does not exist."
	exit 1
fi

mkdir -p "$BACKUP_DIR"


tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" -C "$SOURCE_DIR" . 2>>"$LOG_FILE"


if [ $? -eq 0 ]; then
	echo "$TIMESTAMP - Backup of '$SOURCE_DIR' completed successfully." >> "$LOG_FILE"
	echo "Backup saved to: $BACKUP_DIR/$ARCHIVE_NAME"
else
	echo "$TIMESTAMP - Backup of '$SOURCE_DIR' FAILED." >> "$LOG_FILE"
	echo "Backup failed. Check log at $LOG_FILE"
fi
