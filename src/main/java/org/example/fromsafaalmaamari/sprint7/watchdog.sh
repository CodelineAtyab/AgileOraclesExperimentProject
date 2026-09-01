#!/bin/bash
JAR_PATH="$HOME/weather.jar"
LOG_FILE="$HOME/watchdog.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

if pgrep -f "weather.jar" > /dev/null 2>&1; then
echo "[$TIMESTAMP] weather.jar is running. All good." >> "$LOG_FILE"
else
echo "[$TIMESTAMP] weather.jar is NOT running. Starting it now..." >> "$LOG_FILE"
nohup java -jar "$JAR_PATH" >> "$LOG_FILE" 2>&1 &
fi
