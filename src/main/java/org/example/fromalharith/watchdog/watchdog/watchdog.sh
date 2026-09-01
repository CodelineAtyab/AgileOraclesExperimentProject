#!/bin/bash

APP_NAME="weather.jar"
APP_PATH="/home/alharith/Desktop/Alharith/weather.jar"
LOG_FILE="/home/alharith/Desktop/Alharith/watchdog.log"

if pgrep -f "$APP_NAME" > /dev/null
then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $APP_NAME is running." >> "$LOG_FILE"
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $APP_NAME is NOT running. Restarting..." >> "$LOG_FILE"

    nohup java -jar "$APP_PATH" > /dev/null 2>&1 &

    echo "$(date '+%Y-%m-%d %H:%M:%S') - $APP_NAME restarted successfully." >> "$LOG_FILE"
fi