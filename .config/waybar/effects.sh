#!/usr/bin/env bash
b=$(easyeffects -b 3)
if [[ $b = 2 ]]; then
  echo "󰺢"
elif [[ $b = 1 ]]; then
  echo ""
fi
