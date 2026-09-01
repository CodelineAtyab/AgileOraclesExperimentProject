#!/bin/bash

JAR_PATH="/home/hk/task-86exfwrzj/weather.jar"
LOG_FILE="/home/hk/task-86exfwrzj/watchdog.log"

if pgrep -f "weather.jar" > /dev/null
then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] weather.jar is running. All good." >> $LOG_FILE
else
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] weather.jar is NOT running. Starting it now..." >> $LOG_FILE

    nohup java -jar $JAR_PATH > /dev/null 2>&1 &
fi