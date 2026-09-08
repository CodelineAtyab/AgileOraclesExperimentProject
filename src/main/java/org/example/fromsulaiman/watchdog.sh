#!/usr/bin/env bash

# Watchdog Guardian for the Muscat Weather App.
# Keep this script in the same directory as weather.jar.

set -u

# Step 1: Set a safe PATH because cron runs with a small environment.
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${PATH:-}"

# Step 2: Define absolute paths based on this script location.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
JAR_NAME="weather.jar"
JAR_PATH="$SCRIPT_DIR/$JAR_NAME"
WATCHDOG_LOG="$SCRIPT_DIR/watchdog.log"
APP_LOG="$SCRIPT_DIR/weather-app.log"
LOCK_FILE="$SCRIPT_DIR/watchdog.lock"

# Step 3: Create a readable timestamp for every watchdog log entry.
timestamp() {
  date '+%Y-%m-%d %H:%M:%S'
}

# Step 4: Write watchdog events to watchdog.log.
log_event() {
  printf '[%s] %s\n' "$(timestamp)" "$1" >> "$WATCHDOG_LOG"
}

# Step 5: Use a lock file so two cron runs do not start duplicates at the same time.
exec 9>"$LOCK_FILE"
if command -v flock >/dev/null 2>&1; then
  if ! flock -n 9; then
    log_event "Another watchdog check is already running. Skipping this run."
    exit 0
  fi
fi

# Step 6: Check whether weather.jar is already running.
if pgrep -f "java .*${JAR_NAME}" >/dev/null 2>&1; then
  log_event "${JAR_NAME} is running. All good."
  exit 0
fi

# Step 7: If the jar file is missing, log the problem and stop.
if [ ! -f "$JAR_PATH" ]; then
  log_event "${JAR_NAME} is NOT running, but $JAR_PATH was not found. Cannot start it."
  exit 1
fi

# Step 8: If weather.jar is not running, start it in the background.
log_event "${JAR_NAME} is NOT running. Starting it now..."
nohup java -jar "$JAR_PATH" >> "$APP_LOG" 2>&1 &
log_event "${JAR_NAME} start command sent with PID $!."
