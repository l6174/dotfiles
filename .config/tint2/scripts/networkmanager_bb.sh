#!/bin/sh
SIGSTRENGTH=$(nmcli dev wifi list | awk '/\*/{if (NR!=1) {print $8}}')
SIGSYM=""
if [ "$SIGSTRENGTH" -le 5 ]; then
	SIGSYM="󰤯 "
elif [ "$SIGSTRENGTH" -gt 5 -a "$SIGSTRENGTH" -le 25 ]; then
	SIGSYM="󰤟 "
elif [ "$SIGSTRENGTH" -gt 25 -a "$SIGSTRENGTH" -le 50 ]; then
        SIGSYM="󰤢 "
elif [ "$SIGSTRENGTH" -gt 50 -a "$SIGSTRENGTH" -le 75 ]; then
        SIGSYM="󰤥 "
elif [ "$SIGSTRENGTH" -gt 75 -a "$SIGSTRENGTH" -le 100 ]; then
        SIGSYM="󰤨 "
fi
CONNAME=$(nmcli -a | grep 'Wired connection' | awk 'NR==1{print $1}')
if [ "$CONNAME" = "" ]; then
	CONNAME=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)
fi
PRIVATE=$(nmcli -a | grep 'inet4 192' | awk '{print $2}')
PUBLIC=$(curl -s https://ipinfo.io/ip)
printf "%s" "$SEP1"
[ "$CONNAME" != "" ]; then
	printf "󰤥 %s"
else
	printf "󰤮 %s"
fi 
printf "%s" #"$SEP2"

