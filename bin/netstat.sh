SIGSTRENGTH=$(nmcli dev wifi list | awk '/\*/{if (NR!=1) {print $8}}')
if (0 < SIGSTRENGTH <= 20); then
  SIGSYM="󰤯 "
elif (20 < SIGSTRENGTH <= 40); then
  SIGSYM="󰤟 "
elif (40 < SIGSTRENGTH <= 60); then
  SIGSYM="󰤢 "
elif (60 < SIGSTRENGTH <= 80); then
  SIGSYM="󰤥 "
elif (80 < SIGSTRENGTH <= 100); then
  SIGSYM="󰤨 "
else
 SIGSYM=""
fi
echo "$SIGSYM"
