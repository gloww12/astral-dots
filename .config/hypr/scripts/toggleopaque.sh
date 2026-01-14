#!/usr/bin/env bash
ADDRESS=$(hyprctl activewindow -j | jq -r '.address')
