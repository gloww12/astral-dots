#!/usr/bin/env bash

op=$( echo -e "  Poweroff\n  Reboot\n  Suspend\n  Lock\n  Logout" | rofi -i -dmenu | awk '{print tolower($2)}' )

case $op in 
  poweroff)
    ;&
  reboot)
    ;&
  suspend)
    systemctl $op
    ;;
  lock)
    swaylock -C /home/glow/.config/swaylock.conf
    ;;
  logout)
    hyprctl dispatch exit 1
    ;;
esac
