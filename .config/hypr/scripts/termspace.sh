#!/usr/bin/env bash

w2=$(hyprctl monitors | grep 'active workspace' | awk '{print $3}' | head -n 1)
w1=$(hyprctl monitors | grep 'active workspace' | awk '{print $3}' | tail -n 1)

if [[ $w1 != 11 && $w2 != 11 ]] ; then
  hyprctl dispatch workspace 11
else
  hyprctl dispatch workspace previous
fi
