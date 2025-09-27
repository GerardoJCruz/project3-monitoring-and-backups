#!/bin/bash
# Monitoring script

THRESHOLD=80
LOG_FILE="$HOME/backups/monitor.log"
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
	echo "$(date): Warning - Disk usage is ${USAGE}% (threshold $THRESHOLD%)" >> "$LOG_FILE"
	logger "Disk usage high: ${USAGE}%"
else 
	echo "$(date): OK - Disk usage is ${USAGE}%" >> "$LOG_FILE"
fi

