#!/usr/bin/env bash
h=$(pgrep hypridle)
if [[ $h = "" ]]; then 
  notify-send "idle on (standard)"
  hypridle
else 
  notify-send 'idle off'
  pkill hypridle
fi
