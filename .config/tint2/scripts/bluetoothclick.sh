x=$(bluetoothctl info | grep "Alias" | awk '{print $2}')
if [ "$(bluetoothctl info | grep "Connected" | awk '{print $2}')" = "yes" ]; then
        dunstify -r 5565 "Connected to $x" -i ~/.local/share/icons/fontawesome/bt-connected.svg
	exit 0
else
        dunstify -r 5565 "Not Connected" -i ~/.local/share/icons/fontawesome/bt-x.svg
fi
