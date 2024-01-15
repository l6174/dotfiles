
printf "%s" "$SEP1"
if [ $(playerctl -l | head -n 1) == ""]; then
	printf "Nothing Playing"
else
	playerctl metadata --format '{{ title }}' | head -n 1
fi
printf "%s"
