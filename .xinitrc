setxkbmap -layout br -variant abnt2
xset r rate 250
xset b off
rdb -load ~/.Xresources
xrandr --output VGA1 --pos 1920x-500
exec i3

