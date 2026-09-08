#!/bin/bash
# Path to .jar file
JAR_PATH="/home/tibyansaad/java_projects/weather/target/weather-1.0-SNAPSHOT.jar"

# .log file
LOG_FILE="/home/tibyansaad/java_projects/weather/target/watchdog.log"

# Check if process is running
if ! pgrep -f "$JAR_PATH" > /dev/null; then
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    echo "$TIMESTAMP - weather.jar not running. Restarting..." >> "$LOG_FILE"

    # Start in background
    nohup java -jar  "$JAR_PATH" 2>&1 &
else
     TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    echo "$TIMESTAMP - weather.jar is running. All good."
    :
fi