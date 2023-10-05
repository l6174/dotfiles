#!/bin/bash
xset s 500 &
xautolock -time 5 -locker "betterlockscreen -l blur" -notify 30 -notifier "dunstify 'Locker' 'Locking screen in 30 seconds' -i /home/llawliet/.local/share/icons/mdi/lock-alert.png" -killtime 5 -killer "systemctl suspend"
