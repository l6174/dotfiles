#!/bin/bash

x=$(nmcli -a | grep 'Wired connection' | awk 'NR==1{print $1}')
y=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)

if [ -z "$x" ] && [ -z "$y" ]; then
    dunstify -r 3456 "Internet" "Not Connected" -i ~/.local/share/icons/mdi/wifi-off.png
    exit 1
elif [ -z "$x" ]; then 
    dunstify -r 3456 "Internet" "Connected to $y" -i ~/.local/share/icons/mdi/wifi.png
    exit 1
elif [ -z "$y" ]; then
    dunstify -r 3456 "Internet" "Connected to $x" -i ~/.local/share/icons/mdi/ethernet.png
    exit 1
fi
