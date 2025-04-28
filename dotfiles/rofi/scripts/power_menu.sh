!/bin/env bash

# Options for powermenu
lock=""
logout=""
shutdown=""
reboot="󰁪"
sleep=""

# Get answer from user via rofi
selected_option=$(echo "$lock
$logout
$sleep
$reboot
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
                  -theme ~/.local/share/rofi/themes/power_menu.rasi\
)
# Do something based on selected option
if [ "$selected_option" == "$lock" ]
then
    hyprlock
elif [ "$selected_option" == "$logout" ]
then
    loginctl terminate-user `skwyx`
elif [ "$selected_option" == "$shutdown" ]
then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    systemctl suspend
else
    echo "No match"
fi

