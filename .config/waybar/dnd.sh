#!/usr/bin/env bash
l=$(dunstctl get-pause-level)
if [[ $l = 100 ]]; then 
  echo ' '
elif [[ $l = 0 ]]; then 
  echo ""
fi
