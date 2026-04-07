#!/usr/bin/env bash

m=$(hyprctl monitors all | grep 'DP-4')

if [[ $m = '' ]] ; then
  hyprctl hyprpaper wallpaper 'eDP-1, /home/glow/Pictures/wallpapers/spiderman/miles3.jpg'
else
  hyprctl hyprpaper wallpaper 'eDP-1, /home/glow/Pictures/wallpapers/spiderman/miles2.jpg'
  hyprctl hyprpaper wallpaper 'DP-4, /home/glow/Pictures/wallpapers/spiderman/miles3.jpg'
  # hyprctl hyprpaper wallpaper 'eDP-1, /home/glow/Pictures/wallpapers/spiderman/wud.jpg'
  # hyprctl hyprpaper wallpaper 'DP-4, /home/glow/Pictures/wallpapers/spiderman/sg.jpg'
fi
