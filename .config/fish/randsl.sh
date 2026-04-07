#!/usr/bin/env bash
l=$((1 + $RANDOM % 5))
t=$((1 + $RANDOM % 11))

if [[ $t = 1 ]] ; then
  sl -a$l
elif [[ $t = 2 ]] ; then
  sl -F$l
elif [[ $t = 3 ]] ; then
  sl -l$l
elif [[ $t = 4 ]] ; then
  sl -w$l
elif [[ $t = 5 ]] ; then
  sl -$l
elif [[ $t = 6 ]] ; then
  sl -10000
elif [[ $t = 7 ]] ; then
  brightnessctl s 0
elif [[ $t = 8 ]] ; then
  feh /home/glow/wall/coconut.jpg
elif [[ $t = 9 ]] ; then
  sl
elif [[ $t = 10 ]] ; then
  steam
elif [[ $t = 11 ]] ; then
  chromium --incognito --new-window 'https://www.tomscott.com/usvsth3m/edballs/'
fi
