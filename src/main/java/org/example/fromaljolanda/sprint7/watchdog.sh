#!/bin/bash

APP_NAME="weather.jar"
APP_PATH="/home/aljolanda/weatherApp/weather.jar"
LOG_FILE="/home/aljolanda/weatherApp/watchdog.log"

TIME=$(date '+%Y-%m-%d %H:%M:%S')

if pgrep -f "$APP_NAME" > /dev/null

then
  echo "[$TIME] $APP_NAME is running. All good." >> "$LOG_FILE"

else
  echo "[$TIME] $APP_NAME is NOT running. Starting it now..." >> "$LOG_FILE"

  nohup java -jar "$APP_PATH" >> "$LOG_FILE" 2>&1 &
fi
