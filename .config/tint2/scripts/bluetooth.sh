printf "%s" "$SEP1"
if [ "$(bluetoothctl info | grep "Connected" | awk '{print $2}')" = "yes" ]; then
        printf " %s"
else
        printf " %s"
fi
printf "%s"
