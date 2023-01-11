x=$(bluetoothctl info | grep "Alias" | awk '{print $2}')
if [ "$(bluetoothctl info | grep "Connected" | awk '{print $2}')" = "yes" ]; then
        dunstify -r 5565 "Bluetooth" "Connected to $x" -i ~/.local/share/icons/mdi/bluetooth-connected.png
        exit 0
else
        dunstify -r 5565 "Bluetooth" "Not Connected" -i ~/.local/share/icons/mdi/bluetooth-off.png
fi
