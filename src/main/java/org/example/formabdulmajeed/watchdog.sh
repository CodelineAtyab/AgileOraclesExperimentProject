!/bin/bash

APP_NAME="weather.jar"
APP_PATH="/home/abdulmajeed/weatherapp/weather.jar"
LOG_FILE="/home/abdulmajeed/weatherapp/logs/weather.log"

RUNNING=$(pgrep -f "$APP_NAME")

if [ -z "$RUNNING" ]; then
    echo "$(date) - weather.jar is NOT running. Starting app..." >> "$LOG_FILE"

    nohup java -jar "$APP_PATH" >> "$LOG_FILE" 2>&1 &

else
    echo "$(date) - weather.jar already running." >> "$LOG_FILE"
fi
