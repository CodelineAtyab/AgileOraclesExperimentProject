#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOG_FILE="$SCRIPT_DIR/watchdog.log"
CLASS_NAME="WeatherApi"

if pgrep -f "java.*$CLASS_NAME" > /dev/null; then
   exit 0
else
   echo "$(date '+%Y-%m-%d %H:%M:%S') - Restarting WeatherApi" >> "$LOG_FILE"
   cd "$SCRIPT_DIR" && java WeatherApi &
fi
