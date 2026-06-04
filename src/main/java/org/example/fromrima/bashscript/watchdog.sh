#!/bin/bash
LOG_FILE="/home/riman/watchdog-project/watchdog.log"
APP_PATH="/home/riman/watchdog-project/weather.jar"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

if pgrep -f "weather.jar" > /dev/null
then
	echo "[$TIMESTAMP] weather.jar is running. All good." >> "$LOG_FILE"
else
	echo "[$TIMESTAMP] weather.jar is NOT running. Starting it now..." >> "$LOG_FILE"

	nohup "$APP_PATH" > /dev/null 2>&1 &
fi