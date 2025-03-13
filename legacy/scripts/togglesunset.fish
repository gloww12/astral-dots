set a (pgrep hyprsunset)
if test -z $a
  hyprsunset -t 3000
else
  pkill hyprsunset
end
