#!/bin/bash

LOG_FILE="/home/saifmohsin/watchdog.log"
JAR_FILE="/home/saifmohsin/weather.jar"

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

if pgrep -f "weather.jar" > /dev/null
then
echo "[$TIMESTAMP] weather.jar is running. All good." >> "$LOG_FILE"
else
echo "[$TIMESTAMP] weather.jar is NOT running. Starting it now..." >> "$LOG_FILE"
nohup java -jar "$JAR_FILE" >> "$LOG_FILE" 2>&1 &
fi