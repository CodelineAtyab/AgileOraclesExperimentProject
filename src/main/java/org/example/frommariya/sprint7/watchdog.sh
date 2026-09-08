#!/bin/bash
JAR_NAME="weather.jar"
JAR_PATH="$HOME/weather-project/out/weather.jar"
LOG_FILE="$HOME/weather-project/logs/watchdog.log"
mkdir -p "$HOME/weather-project/logs"
log_message() {
echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}
if pgrep -f "$JAR_NAME" > /dev/null 2>&1; then
log_message ":white_check_mark: weather.jar is running. All good."
else
log_message ":x: weather.jar is NOT running. Starting it now..."
cd "$HOME/weather-project"
nohup java -jar "$JAR_PATH" >> "$HOME/weather-project/logs/weather.log" 2>&1 &
sleep 2
if pgrep -f "$JAR_NAME" > /dev/null 2>&1; then
log_message ":white_check_mark: weather.jar started successfully (PID: $(pgrep -f $JAR_NAME))"
else
log_message ":x: ERROR: Failed to start weather.jar"
fi
fi
