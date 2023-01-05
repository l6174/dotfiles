#!/bin/bash

x=$(connmanctl services | awk 'NR==1{print $2}')
CONNAME=$(connmanctl state | rg State | awk 'NR==1{print $3}')
if [ "$CONNAME" = "ready" ] || [ "$CONNAME" = "online" ]; then
    dunstify -r 3456 "Connected to $x" -i ~/.local/share/icons/fontawesome/wifi.svg
    exit 0
else
    dunstify -r 3456 "Not Connected" -i ~/.local/share/icons/fontawesome/airplane.svg
    exit 0
fi
