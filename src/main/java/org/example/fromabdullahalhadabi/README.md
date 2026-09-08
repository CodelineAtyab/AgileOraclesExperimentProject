# 🐕 Watchdog Guardian — weather.jar Monitor

## Description
A bash script that acts as a guardian for `weather.jar`.
It runs every minute via cron, checks if the process is alive,
and automatically restarts it if it has crashed — logging every event with a timestamp.

---

## Files
- `watchdog.sh` — the watchdog script
- `watchdog.log` — auto-generated log file (created on first run)

---

## How It Works

Every minute, cron triggers `watchdog.sh` which does the following:

```
Is weather.jar running?
        |
       YES → Log "All good." and exit
        |
        NO → Log "NOT running. Starting it now..." → Launch weather.jar in background
```

---

## Setup & Usage

### 1. Make the script executable
```bash
chmod +x /home/Blitz_280/watchdog.sh
```

### 2. Schedule with cron
```bash
crontab -e
```

Add these two lines:
```
@reboot /home/Blitz_280/watchdog.sh >> /home/Blitz_280/watchdog.log 2>&1
* * * * * /home/Blitz_280/watchdog.sh >> /home/Blitz_280/watchdog.log 2>&1
```

### 3. Verify cron is set
```bash
crontab -l
```

---

## Test Results

### Step 1 — Confirmed weather.jar was running
```bash
pgrep -f "weather.jar"
3926
```
✅ Process ID 3926 was active and healthy.

### Step 2 — Killed weather.jar manually
```bash
pkill -f "weather.jar"
pgrep -f "weather.jar"
(no output — process is dead)
```
✅ Process successfully killed to simulate a crash.

### Step 3 — Ran watchdog manually
```bash
bash /home/Blitz_280/watchdog.sh
```
✅ Watchdog detected the crash and restarted weather.jar immediately.

### Step 4 — Confirmed restart in the log
```bash
cat /home/Blitz_280/watchdog.log
```

```
[2026-05-10 09:19:02] weather.jar is running. All good.
[2026-05-10 09:23:01] weather.jar is running. All good.
[2026-05-10 09:24:01] weather.jar is running. All good.
[2026-05-10 09:24:11] weather.jar is NOT running. Starting it now...
[2026-05-10 09:25:01] weather.jar is running. All good.
[2026-05-10 09:26:01] weather.jar is running. All good.
[2026-05-10 09:27:01] weather.jar is running. All good.
[2026-05-10 09:28:01] weather.jar is running. All good.
[2026-05-10 09:29:01] weather.jar is running. All good.
[2026-05-10 09:30:01] weather.jar is running. All good.
[2026-05-10 09:31:01] weather.jar is running. All good.
[2026-05-10 09:32:01] weather.jar is running. All good.
[2026-05-10 09:33:01] weather.jar is running. All good.
[2026-05-10 09:34:01] weather.jar is running. All good.
[2026-05-10 09:35:01] weather.jar is running. All good.
[2026-05-10 09:36:01] weather.jar is running. All good.
[2026-05-10 09:37:01] weather.jar is running. All good.
[2026-05-10 09:38:01] weather.jar is running. All good.
[2026-05-10 09:39:01] weather.jar is running. All good.
[2026-05-10 09:39:45] weather.jar is NOT running. Starting it now...
[2026-05-10 09:40:01] weather.jar is running. All good.
```

### Step 5 — Confirmed new process ID after restart
```bash
pgrep -f "weather.jar"
4180
```
✅ New Process ID 4180 — weather.jar successfully restarted by the watchdog!

---

## Acceptance Criteria

| Requirement | Status |
|---|---|
| `watchdog.sh` exists and is executable | ✅ |
| Detects if `weather.jar` is running using `pgrep` | ✅ |
| Starts jar in background if NOT running | ✅ |
| Does nothing if already running | ✅ |
| No duplicate process launched | ✅ |
| `watchdog.log` created with timestamps | ✅ |
| `@reboot` cron entry added | ✅ |
| `* * * * *` cron entry added | ✅ |
| After killing, watchdog restarts within 1 minute | ✅ |

---

## Key Commands Used

| Command | Purpose |
|---|---|
| `pgrep -f "weather.jar"` | Check if process is running |
| `pkill -f "weather.jar"` | Kill the process (simulate crash) |
| `nohup java -jar weather.jar &` | Start jar in background |
| `chmod +x watchdog.sh` | Make script executable |
| `crontab -e` | Open cron editor |
| `crontab -l` | List cron jobs |

---

*Completed by: Blitz_280 | Date: 2026-05-10 | Oracle Linux VM via PuTTY & WinSCP*
