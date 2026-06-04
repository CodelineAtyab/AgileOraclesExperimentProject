#!/bin/bash

LOGFILE="/home/Ahed/watchdog/watchdog.log"

if
  !pgrep -f "weather.jar" > /dev/null
then
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] weather.jar is NOT running. Starting it now..." >> $LOGFILE

nohup java -jar /home/Ahed/weather.jar > /dev/null 2>&1 &
else
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] weather.jar is running. All good." >> $LOGFILE
fi