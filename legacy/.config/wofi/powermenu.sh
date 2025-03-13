#!/usr/bin/env bash

op=$( echo -e "  Poweroff\n  Reboot\n  Suspend\n  Lock\n  Logout" | wofi -i --dmenu --width 300 --height 200 | awk '{print tolower($2)}' )

case $op in 
  poweroff)
    ;&
  reboot)
    ;&
  suspend)
    systemctl $op
    ;;
  lock)
    swaylock -C /home/glow/.config/swaylock.conf -i /home/glow/Pictures/pastel-window.png
    ;;
  logout)
    hyprctl dispatch exit 1
    ;;
esac
