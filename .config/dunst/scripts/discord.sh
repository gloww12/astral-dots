#!/usr/bin/env bash
spath='/home/glow/Music/sound_effects/'

# if [[ $DUNST_SUMMARY == *'ipod touch baby (bestie 🫶💖💕)'* ]]; then
#   play $spath"Boing.wav"
# else
#   play $spath"fiddledee.mp3"
# fi

case $DUNST_SUMMARY in
  *'ipod touch baby (bestie 🫶💖💕)'*)
    play $spath"Boing.wav"
    ;;
  *'ipad baby (bestie 🫶🫶🫶)'*)
    play $spath"boobychamp.wav"
    ;;
  *'chew toy'*)
    play $spath"bong.mp3"
    ;;
  *'Raebe'*)
    play $spath"wiwiwi.wav"
    ;;
  *'drizzle (she/her)'*)
    play $spath"wallawallabingbang.wav"
    ;;
  *)
    play $spath"fiddledee.mp3"
    ;;
esac
