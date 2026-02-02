#!/usr/bin/env bash

m=$(hyprctl monitors all | grep 'DP-4')

if [[ $m = '' ]] ; then
  hyprctl hyprpaper wallpaper 'eDP-1, /home/glow/Pictures/wallpapers/catppuccin-slop/bh-mocha.png'
else
  hyprctl hyprpaper wallpaper 'eDP-1, /home/glow/Pictures/wallpapers/zelda/botw1.jpg'
  hyprctl hyprpaper wallpaper 'DP-4, /home/glow/Pictures/wallpapers/zelda/sword.jpg'
fi
