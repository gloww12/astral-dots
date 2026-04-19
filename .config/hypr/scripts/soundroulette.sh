#!/usr/bin/env bash

DIR="/home/glow/Music/sound_effects/"
LEN=$(ls ~/Music/sound_effects/ | wc -l)
NUM=$((1 + $RANDOM % $LEN))

FILE=$(ls $DIR | head -n $NUM | tail -n 1)

notify-send "muppet"
play "$DIR$FILE"
