#!/bin/sh
    if [ -z "$(pgrep xautolock)" ]
    then
        dunstify -u low -r 5499 -i /home/llawliet/.local/share/icons/mdi/eye.png "Inhibitor" "Active"
    else
        dunstify -u low -r 5499 -i /home/llawliet/.local/share/icons/mdi/eye-off.png "Inhibitor" "Not Active" 
    fi
