#!/bin/bash
if  [[ "$(playerctl status 2> /dev/null)" != "" ]]; then
    echo "$(playerctl metadata title) - $(playerctl metadata artist)" 
else
    echo ""
fi
