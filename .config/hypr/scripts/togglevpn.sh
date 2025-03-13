#!/usr/bin/env bash
s=$(mullvad status | awk '{print $1}' | head -n 1)
echo $s
if [[ $s = 'Connected' ]]; then
  mullvad disconnect
elif [[ $s = 'Disconnected' ]]; then
  mullvad connect
fi
