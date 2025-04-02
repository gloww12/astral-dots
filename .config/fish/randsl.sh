#!/usr/bin/env bash
l=$((1 + $RANDOM % 5))
t=$((1 + $RANDOM % 5))

if [[ $t = 1 ]] ; then
  sl -a$l
elif [[ $t = 2 ]] ; then
  sl -F$l
elif [[ $t = 3 ]] ; then
  sl -l$l
elif [[ $t = 4 ]] ; then
  sl -w$l
elif [[ $t = 5 ]] ; then
  sl -$l
fi
