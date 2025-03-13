set a (pgrep hypridle)
if test -z $a
  hypridle
else
  pkill hypridle
end
