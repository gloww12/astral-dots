#!/bin/bash
if mullvad status | grep -q 'Connected'; then
  echo "󱎚 "
else
  echo "DISCONNECTED "
fi
