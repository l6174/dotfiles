#!/bin/sh
    if [ -z "$(pgrep xautolock)" ]
    then
        dunstify -u low -r 5499 -i /home/llawliet/.local/share/icons/fontawesome/eye.svg "Inhibitor" "Active"
    else
        dunstify -u low -r 5499 -i /home/llawliet/.local/share/icons/fontawesome/eye-x.svg "Inhibitor" "Not Active" 
    fi
