#!/bin/bash
if [[ "$(playerctl status 2> /dev/null)" != "" ]]; then
  zscroll -l 30 \
    --delay 0.1 \
    --scroll-padding "  |  " \
    --match-command "`dirname $0`/playerctl.sh --status" \
    --update-check true "`dirname $0`/playerctl.sh" &
else
  echo ""
fi

wait
