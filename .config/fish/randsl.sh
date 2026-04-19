#!/usr/bin/env bash
l=$((1 + $RANDOM % 5))
o="/home/glow/.config/hypr/scripts/slopts"
len=$(cat $o | wc -l)
t=$((1 + $RANDOM % $len))

line=$(cat $o | head -n $t | tail -n 1)
$line
