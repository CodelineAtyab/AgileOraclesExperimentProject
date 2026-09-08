#!/bin/bash
# ═══════════════════════════════════════════════════════════════
#  ALGORITHM DIAGRAM
# ═══════════════════════════════════════════════════════════════
#         START
#           │
#     ┌─────▼──────────┐
#     │  Cron entries  │
#     │  already in    │──── NO ──► Add both lines to crontab
#     │  crontab?      │
#     └─────┬──────────┘
#           │ YES
#           │
#     ┌─────▼──────────┐
#     │  Weather.jar   │
#     │  running?      │──── NO ──► Start it now
#     │  (1st check)   │
#     └─────┬──────────┘
#           │ YES
#           │
#     ┌─────▼──────────┐
#     │  Weather.jar   │
#     │  running?      │
#     │  (2nd check)   │
#     └─────┬──────────┘
#        YES│           │NO
#           │           │
#     ┌─────▼──┐   ┌───▼──────────┐
#     │ LOG:   │   │ Start it &   │
#     │healthy │   │ LOG: restart │
#     └─────┬──┘   └───┬──────────┘
#           │           │
#     ┌─────▼───────────▼────────┐
#     │          END             │
#     └──────────────────────────┘
# ═══════════════════════════════════════════════════════════════

LOG="/home/admin/Desktop/WeatherInMuscat/Watchdog.log"                    # Path to the log file
JAR="/home/admin/Desktop/WeatherInMuscat/Weather.jar"                     # Path to the Weather JAR
CRON_REBOOT="@reboot /home/admin/Desktop/WeatherInMuscat/Watchdog.sh"     # Cron: run on every reboot
CRON_EVERY="*/1 * * * * /home/admin/Desktop/WeatherInMuscat/Watchdog.sh"  # Cron: run every 60 seconds

# Install cron entries if they do not already exist in crontab
(crontab -l 2>/dev/null | grep -F "$CRON_EVERY") || \
  (crontab -l 2>/dev/null; echo "$CRON_REBOOT"; echo "$CRON_EVERY") | crontab -

# Immediately start Weather.jar if not already running
pgrep -f "Weather.jar" > /dev/null || nohup java -jar "$JAR" > /dev/null 2>&1 &

# Log service status: healthy if running, restart if not
if pgrep -f "Weather.jar" > /dev/null; then
    echo "$(date): service Running and healthy" >> "$LOG"
else
    nohup java -jar "$JAR" > /dev/null 2>&1 &
    echo "$(date): restarting process" >> "$LOG"
fi
