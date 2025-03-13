#!/usr/bin/env bash
HYPRCAPS=$(hyprctl getoption input:kb_options| awk 'NR==1{print $2}')
if [ "$HYPRCAPS" = "caps:escape" ] ; then
    hyprctl keyword input:kb_options "caps:"
    notify-send "caps (standard)"
    exit
fi
if [ "$HYPRCAPS" = "caps:" ] ; then
    hyprctl keyword input:kb_options "caps:swapescape"
    notify-send "swapped"
    exit
fi
if [ "$HYPRCAPS" = "caps:swapescape" ] ; then
    hyprctl keyword input:kb_options "caps:none"
    notify-send "none"
    exit
fi
notify-send "escape (default)"
hyprctl reload
