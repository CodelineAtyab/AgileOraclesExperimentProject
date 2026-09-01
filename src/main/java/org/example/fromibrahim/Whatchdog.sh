#!/bin/bash


# ── Configuration ────────────────────────────
JAR_PATH="/home/oracle/weather.jar"
LOG_FILE="/home/oracle/watchdog.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# ── Process Check ────────────────────────────
# pgrep -f searches the full command line for "weather.jar"
# It returns exit code 0 if found, 1 if not found
if pgrep -f "weather.jar" > /dev/null 2>&1; then

    # ── Process IS running ───────────────────
    echo "[$TIMESTAMP] weather.jar is running. All good." >> "$LOG_FILE"
else


    # ── Process is NOT running ───────────────
    echo "[$TIMESTAMP] weather.jar is NOT running. Starting it now..." >> "$LOG_FILE"

    # Start the jar in the background:
    # - nohup   → keeps it running after this shell exits
    # - &       → runs it in the background (non-blocking)
    nohup java -jar "$JAR_PATH" >> /home/oracle/weather.log 2>&1 &

    echo "[$TIMESTAMP] weather.jar started with PID $!" >> "$LOG_FILE"
fi