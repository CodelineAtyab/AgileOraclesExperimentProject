#!/bin/bash

# Name of the Java application
APP_NAME="weather.jar"

# Full path to the jar file
APP_PATH="/home/aljolanda/weatherApp/weather.jar"

# Full path to the log file
# All events will be written here
LOG_FILE="/home/aljolanda/weatherApp/watchdog.log"

# Get current date and time
TIME=$(date '+%Y-%m-%d %H:%M:%S')

# Check if weather.jar is already running
if pgrep -f "$APP_NAME" > /dev/null

then
  # If the application is running
  # Write a healthy status message to log
  echo "[$TIME] $APP_NAME is running. All good." >> "$LOG_FILE"

else
  # If the application is NOT running
  # Write restart message to log
  echo "[$TIME] $APP_NAME is NOT running. Starting it now..." >> "$LOG_FILE"

  # Start the application in background
  nohup java -jar "$APP_PATH" >> "$LOG_FILE" 2>&1 &
fi
