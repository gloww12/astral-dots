#!/usr/bin/env bash
CAPSIN=$(hyprctl getoption input:kb_options | awk 'NR==1{print $2}')
if [ "$CAPSIN" = "caps:escape" ] ; then
  CAPSOUT=""
fi
if [ "$CAPSIN" = "caps:" ] ; then
  CAPSOUT="󰯳 "
fi
if [ "$CAPSIN" = "caps:swapescape" ] ; then
  CAPSOUT="󰰣 "
fi
if [ "$CAPSIN" = "caps:none" ] ; then
  CAPSOUT="󰰔 "
fi
# printf '{"caps":"%s"}\n' "$CAPSOUT"
echo $CAPSOUT
