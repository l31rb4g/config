xrdb -load ~/.Xresources

~/scripts/keyboard_config.sh
~/scripts/xrandr_init.sh

#feh --bg-max /home/l31rb4g/config/BeastieVsTux.jpeg -B "#1B1B1B"

# gnome keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xsettingsd &

# substituir , por . no teclado numérico
xmodmap -e "keycode 91 = period period"

# notification daemon
dunst &

# clipboard service
DISPLAY=:0 clipmenud &

exec i3
