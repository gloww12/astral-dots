set s (mullvad status | awk '{print $1}' | head -n 1)
echo $s
if test $s = 'Disconnected'
  mullvad connect
else
  mullvad disconnect
end
