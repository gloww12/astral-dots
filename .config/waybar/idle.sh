#!/usr/bin/env bash
s=$(pgrep hypridle)
if [ "$s" = "" ] ; then
  echo "I"
else
  echo ""
fi
