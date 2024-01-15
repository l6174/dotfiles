#!/bin/sh

STATUS=$(playerctl status | head -n 1)
printf "%s" "$SEP1"
if [ "$STATUS" == "Playing" ]; then
	printf ""
else
	printf ""
fi
printf "%s"
