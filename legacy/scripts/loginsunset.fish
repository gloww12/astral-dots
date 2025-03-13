pkill hyprsunset
set d date
set m ($d | awk '{print $5}')
echo $m
set h ($d | awk '{print $4}' | awk -F: '{print $1}')
echo $h
if test $m = 'AM'
  if test $h -eq 12
    hyprsunset -t 3000
  end
  if test $h -le 7
    hyprsunset -t 3000
  end
else
  if test $h -ge 19
    hyprsunset -t 3000
  end
end
