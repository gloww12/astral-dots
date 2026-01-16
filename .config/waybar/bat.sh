#!/usr/bin/env bash

p=$(tlp-stat -m)
if [[ $p = 'performance/AC' ]]; then 
  echo ''
elif [[ $p = 'balanced/BAT' ]]; then 
  echo "~"
elif [[ $p = 'power-saver/SAV' ]]; then
  echo "󱈐"
fi
