#!/usr/bin/env bash

# please symlink this to path future hannah

active=$(hyprctl monitors | grep 'focused: yes' -B 5 | head -n 1 | cut -d' ' -f3)
echo $active

if [[ $active != $1 ]] ; then
  hyprctl dispatch workspace $1
else
  hyprctl dispatch workspace previous
fi
