#!/bin/bash

# application name
APP_NAME="weather.jar"

# path to the jar file
APP_PATH="/home/oracle/weather.jar"

# log file path
LOG_FILE="/home/oracle/watchdog.log"

# current timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# check if jar is running
if pgrep -f "$APP_NAME" > /dev/null
then
    echo "[$TIMESTAMP] weather.jar is running... All good :)" >> "$LOG_FILE"
else
    echo "[$TIMESTAMP] weather.jar is NOT running :(  Starting it now...." >> "$LOG_FILE"

    # Start the application in background
    nohup java -jar "$APP_PATH" >> "$LOG_FILE" 2>&1 &
fi