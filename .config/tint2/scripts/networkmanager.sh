#!/bin/sh

# A dwm_bar function to show the current network connection/SSID, private IP, and public IP using NetworkManager
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: NetworkManager, curl

    CONNAME=$(connmanctl state | rg State | awk 'NR==1{print $3}')

    printf "%s" "$SEP1"
	if [ "$CONNAME" = "ready" ] || [ "$CONNAME" = "online" ]; then
            printf " %s" # %s" "$CONNAME" ########"$PRIVATE" "$PUBLIC"🌐
        else
	    printf " %s"
	fi 
    printf "%s" #"$SEP2"
