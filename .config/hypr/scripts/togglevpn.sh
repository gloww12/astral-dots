#!/usr/bin/env bash
s=$(mullvad status | awk '{print $1}' | head -n 1)
echo $s
if [[ $s = 'Connected' ]]; then
  notify-send 'vpn disconnected'
  mullvad disconnect
elif [[ $s = 'Disconnected' ]]; then
  notify-send 'vpn connected'
  mullvad connect
fi
