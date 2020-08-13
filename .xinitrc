xrdb -load ~/.Xresources

~/scripts/run_config.sh

xrandr --output DVI-I-3 --rotate right
xrandr --output DVI-I-3 --pos 1920x-400

#feh --bg-max /home/l31rb4g/config/BeastieVsTux.jpeg -B "#1B1B1B"

# gnome keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xsettingsd &

xmodmap -e "keycode 91 = period period"

exec i3
