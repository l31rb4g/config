setxkbmap -layout br -variant abnt2
xset r rate 250
xset b off
xrdb -load ~/.Xresources
xrandr --output VGA-1 --pos 1920x-460
xrandr --output VGA-1 --rotate left
numlockx
#feh --bg-max /home/l31rb4g/config/BeastieVsTux.jpeg -B "#1B1B1B"

exec i3
