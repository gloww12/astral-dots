#!/usr/bin/env bash

p=$(tlp-stat -m)
if [[ $p = 'performance/AC' ]]; then 
  tlpctl balanced
  notify-send 'tlp balanced/BAL'
elif [[ $p = 'balanced/BAT' ]]; then 
  tlpctl power-saver
  notify-send 'tlp power-saver/SAV'
elif [[ $p = 'power-saver/SAV' ]]; then
  tlpctl performance
  notify-send 'tlp performance/PRF'
fi
