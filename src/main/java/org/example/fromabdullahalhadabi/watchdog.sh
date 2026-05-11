





Last login: Sun May 10 09:04:43 2026 from 192.168.100.122
[Blitz_280@localhost ~]$ pgrep -f "weather.jar"
3926
[Blitz_280@localhost ~]$ crontab -l
@reboot /home/Blitz_280/watchdog.sh >> /home/Blitz_280/watchdog.log 2>&1
* * * * * /home/Blitz_280/watchdog.sh >> /home/Blitz_280/watchdog.log 2>&1
[Blitz_280@localhost ~]$ cat /home/Blitz_280/watchdog.log
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
[Blitz_280@localhost ~]$ pkill -f "weather.jar"
[Blitz_280@localhost ~]$ pgrep -f "weather.jar"
[Blitz_280@localhost ~]$ bash /home/Blitz_280/watchdog.sh
[Blitz_280@localhost ~]$ cat /home/Blitz_280/watchdog.log
pgrep -f "weather.jar"
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
4180
[Blitz_280@localhost ~]$ crontab -l
@reboot /home/Blitz_280/watchdog.sh >> /home/Blitz_280/watchdog.log 2>&1
* * * * * /home/Blitz_280/watchdog.sh >> /home/Blitz_280/watchdog.log 2>&1
[Blitz_280@localhost ~]$ cat /home/Blitz_280/watchdog.log
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
