#!/bin/bash
entry=$(printf "Shutdown\nReboot\nSuspend\nLogout" | rofi -dmenu -i -p "Power Menu")
case "$entry" in
    *Shutdown) poweroff ;;
    *Reboot) reboot ;;
    *Suspend) systemctl suspend ;;
    *Logout) hyprctl dispatch exit ;;
esac
