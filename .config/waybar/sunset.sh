#!/usr/bin/env bash
s=$(pgrep hyprsunset)
if [ "$s" = "" ] ; then
  echo ""
else
  echo " "
fi
