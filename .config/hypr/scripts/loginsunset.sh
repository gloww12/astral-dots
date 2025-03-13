#!/usr/bin/env bash
m=$(date | awk '{print $5}')
h=$(date | awk '{print $4}' | awk -F: '{print $1}')

echo $m
echo $h

if [[ $m = 'AM' ]]; then
  if [[ $h = 12 ]]; then
    hyprsunset -t 3000
  elif [[ $h -lt 7 ]]; then
    hyprsunset -t 3000
  fi
elif [[ $m = 'PM' ]]; then
  if [[ $h -gt 07 ]] && [[ $h != 12 ]]; then
    hyprsunset -t 3000
  fi
fi
