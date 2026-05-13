#!/bin/bash

#Absolute paths (IMPORTANT for cron)

JAR_PATH  ="/home/razan/WeatherApp.jar"
LOG_FILE="/home/razan/watchdog-task/watchdog.log"

#Timestamp
TIMESTAMP=$(date '+%Y-%m-%d  %H:%M:%S')

#Check if process is running

if pgrep -f "weatherApp.jar". > /dev/null

then
  echo "[$TIMESTAMP] weatherApp.jar is running. All good" >> $LOG_FILE

else
  echo "[$TIMESTAMP] WeatherApp.jar is NOT running.Starting it now.." >> $LOG_FILE

  #Start the app in background

  nohup java -jar" $JAR_PATH" > /dev/null 2>&1 &

  fi

