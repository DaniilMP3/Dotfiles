#!/bin/bash

options=$'Shutdown\nReboot\nLogout\nSuspend'

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
"Shutdown")
   systemctl poweroff
   ;;
"Reboot")
   systemctl reboot
   ;;
"Logout")
   loginctl terminate-session $XDG_SESSION_ID
   ;;
"Suspend")
   systemctl suspend
   ;;
*)
   echo "No action taken."
   ;;
esac
