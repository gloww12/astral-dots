#!/usr/bin/env bash
s=$(pgrep hypridle)
if [ "$s" = "" ] ; then
  echo "🪼"
else
  echo ""
fi
