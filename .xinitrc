setxkbmap -layout br -variant abnt2
xset r rate 250
xset b off
xrdb -load ~/.Xresources
xrandr --output DVI-I-3 --rotate left
xrandr --output DVI-I-3 --pos 1920x-420
#feh --bg-max /home/l31rb4g/config/BeastieVsTux.jpeg -B "#1B1B1B"

exec i3
