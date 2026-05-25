#!/usr/bin/env bash
i="/home/glow/.config/waybar/juanito"
len=$(cat $i | wc -l)
o=$((1 + $RANDOM % $len))

line=$(cat $i | head -n $o | tail -n 1)
echo $line
