#!/bin/bash

# Application name
APP_NAME="weather.jar"

# Path of the jar file
APP_PATH="$HOME/weather.jar"

# Log file path
LOG_FILE="$HOME/watchdog/watchdog.log"

# Get current timestamp
TIME_NOW=$(date '+%Y-%m-%d %H:%M:%S')

# Check whether weather.jar is running
if pgrep -f "$APP_NAME" > /dev/null
then
echo "[$TIME_NOW] weather.jar is running. All good." >> "$LOG_FILE"
else
echo "[$TIME_NOW] weather.jar is NOT running. Starting it now..." >> "$LOG_FILE"

# Start application in background
nohup java -jar "$APP_PATH" > /dev/null 2>&1 &
fi