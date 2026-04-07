#!/usr/bin/env bash

# symlink this to path

w2=$(hyprctl monitors | grep 'active workspace' | awk '{print $3}' | head -n 1)
w1=$(hyprctl monitors | grep 'active workspace' | awk '{print $3}' | tail -n 1)

if [[ $w1 != $1 && $w2 != $1 ]] ; then
  hyprctl dispatch workspace $1
else
  hyprctl dispatch workspace previous
fi
