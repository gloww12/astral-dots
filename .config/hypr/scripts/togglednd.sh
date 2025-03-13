#!/usr/bin/env bash
s=$(dunstctl get-pause-level)
if [[ $s = 0 ]]; then
  notify-send "dnd on"
  sleep 5
  dunstctl set-paused toggle
elif [[ $s = 100 ]]; then
  dunstctl set-paused toggle
  notify-send "do not disturb off"
fi
