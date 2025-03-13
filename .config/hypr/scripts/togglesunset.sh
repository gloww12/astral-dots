#!/usr/bin/env bash
pgrep hyprsunset || hyprsunset -t 3000 && pkill hyprsunset
