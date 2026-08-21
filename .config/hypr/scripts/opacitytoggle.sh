#!/usr/bin/env bash

o=$(hyprctl getprop active opacity)
if [[ $o = '0.8' ]]; then
  hyprctl dispatch 'hl.dsp.window.set_prop({ prop = "opacity", value = "1.0" })'
else
  hyprctl dispatch 'hl.dsp.window.set_prop({ prop = "opacity", value = "0.8" })'
fi
