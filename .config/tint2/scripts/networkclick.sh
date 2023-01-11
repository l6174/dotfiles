#!/bin/bash

x=$(connmanctl services | awk 'NR==1{print $2}')
CONNAME=$(connmanctl state | rg State | awk 'NR==1{print $3}')
if [ "$CONNAME" = "ready" ] || [ "$CONNAME" = "online" ]; then
    dunstify -r 3456 "Internet" "Connected to $x" -i ~/.local/share/icons/mdi/wifi.png
    exit 0
else
    dunstify -r 3456 "Internet" "Not Connected" -i ~/.local/share/icons/mdi/wifi-off.png
    exit 0
fi
