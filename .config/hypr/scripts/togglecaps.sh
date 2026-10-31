#!/usr/bin/env bash
HYPRCAPS=$(hyprctl getoption input:kb_options| awk 'NR==1{print $2}')
if [ "$HYPRCAPS" = "caps:escape" ] ; then
  hyprctl eval 'hl.config ({ input = {kb_options = "caps:"} })'
    notify-send "caps (standard)"
    exit
fi
notify-send "escape (default)"
hyprctl reload
