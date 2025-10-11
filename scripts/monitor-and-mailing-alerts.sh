#!/bin/bash
# Monitoring script

THRESHOLD=80
LOG_FILE="$HOME/backups/monitor.log"
USAGE=95
#USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')


if [ "$USAGE" -gt "$THRESHOLD" ]; then
#	echo "$(date): Warning - Disk usage is ${USAGE}% (threshold $THRESHOLD%)" >> "$LOG_FILE"
#	logger "Disk usage high: ${USAGE}%"

	MSG="Disk usage critical: ${USAGE}% on $(hostname)"
	echo "$(date): $MSG" >> "$LOG_FILE"
	echo "$MSG" | mailx -s "Alert: Disk Usage High" gjaviercruz@gmail.com
else 
#	echo "$(date): OK - Disk usage is ${USAGE}%" >> "$LOG_FILE"

	echo "$(date): OK - Disk usage is ${USAGE}%" >> "$LOG_FILE"
fi


