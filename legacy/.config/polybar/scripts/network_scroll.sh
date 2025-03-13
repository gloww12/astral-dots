#!/bin/bash
zscroll -l 15 \
  --delay 0.1 \
  --scroll-padding "  |  " \
  --match-command "`dirname $0`/network.sh --status" \
  --update-check true "`dirname $0`/network.sh" &

wait
