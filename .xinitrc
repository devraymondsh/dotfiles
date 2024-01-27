setxkbmap -model pc104 -layout us,ir -option grp:alt_shift

/usr/bin/pipewire &
sleep 3
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &

exec /usr/bin/i3
