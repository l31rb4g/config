# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4


# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
#font pango:Sans 8
#font xft:Source Code Pro 9
font xft:DejaVuSansMono 8

# Border style
for_window [class="^.*"] border 1
for_window [class="firefox"] border none
for_window [class="Tor Browser"] border none
for_window [class="Chromium"] border none
for_window [title="Emulator"] floating enable; floating_maximum_size "607 x 1080"
#for_window [class="Wine" instance="fireworks.exe" title="Macromedia Fireworks 8 - .*"] fullscreen; border normal
#for_window [class="Wine" title="" instance="heidisql.exe"] move scratchpad
#for_window [class="Wine" instance="heidisql.exe"] border none; move scratchpad


# Colors
client.focused          #5FFF87 #5FFF87 #000000 #2e9ef4 #5FFF87


for_window [window_role="(?i)about"] floating enable

hide_edge_borders smart

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
#bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+Return exec xterm
#bindsym $mod+Return exec terminator

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
bindsym $mod+d exec dmenu_run
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9
bindsym $mod+Shift+0 move container to workspace $ws10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 5 px or 5ppt
        bindsym Down resize grow height 5 px or 5 ppt
        bindsym Up resize shrink height 5 px or 5 ppt
        bindsym Right resize grow width 5 px or 5 ppt

        # back to normal: Enter or Escape or $mod+r
        bindsym Return mode "default"
        bindsym Escape mode "default"
        bindsym $mod+r mode "default"
}

bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
    tray_output DP-1
    output DP-1
    font xft:DejaVuSansMono 10
    status_command /home/l31rb4g/scripts/i3status.py
}

bar {
    tray_output none
    output DVI-D-0
    font xft:DejaVuSansMono 10
    status_command /home/l31rb4g/scripts/i3status.py --vertical
}


focus_follows_mouse no


##############################
# Keyboard shortcuts
##############################
# F1
bindsym $mod+F1 exec --no-startup-id /home/l31rb4g/scripts/i3-utils.sh focus

# SF1
bindsym $mod+Shift+F1 exec --no-startup-id /home/l31rb4g/scripts/i3-utils.sh blur

# CSF1
bindsym $mod+Control+Shift+F1 exec --no-startup-id /home/l31rb4g/scripts/selector.sh
bindsym $mod+KP_Add exec --no-startup-id /home/l31rb4g/scripts/selector.sh

# F2, F3, F4, SF4
# VOLUME (LINUX PULSEAUDIO)
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5%
bindsym $mod+F2 exec --no-startup-id pactl set-sink-volume 0 -5%
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5%
bindsym $mod+F3 exec --no-startup-id pactl set-sink-volume 0 +5%
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle
bindsym $mod+F4 exec --no-startup-id pactl set-sink-mute 0 toggle
bindsym $mod+Shift+F4 exec --no-startup-id pactl set-sink-volume 0 100%
# VOLUME (FREEBSD)
#bindsym XF86AudioLowerVolume exec --no-startup-id mixer vol -5
#bindsym $mod+F2 exec --no-startup-id mixer vol -5:-5
#bindsym XF86AudioRaiseVolume exec --no-startup-id mixer vol +5
#bindsym $mod+F3 exec --no-startup-id mixer vol +5:+5
#bindsym XF86AudioMute exec --no-startup-id /home/l31rb4g/scripts/mixer-toggle-mute.sh
#bindsym $mod+F4 exec --no-startup-id /home/l31rb4g/scripts/mixer-toggle-mute.sh

# SF2
bindsym $mod+Shift+F2 exec firefox

# CSF2
bindsym $mod+Control+Shift+F2 exec google-chrome-stable --incognito


# F5
bindsym $mod+F5 exec --no-startup-id killall -19 firefox

# SF5
bindsym $mod+Shift+F5 exec --no-startup-id bash /home/l31rb4g/scripts/run_config.sh

# F6
bindsym $mod+F6 exec --no-startup-id killall -18 firefox

# F7
bindsym $mod+F7 exec --no-startup-id (sleep 2 && curl http://grow:7000)&

# F8
#bindsym $mod+F8 exec --no-startup-id timebox
bindsym $mod+F8 exec --no-startup-id explorer start
bindsym $mod+Shift+F8 exec --no-startup-id explorer stop

# F9
#bindsym $mod+F9 exec --no-startup-id pcmanfm
bindsym $mod+F9 exec --no-startup-id dolphin

# F10
bindsym $mod+F10 exec --no-startup-id pavucontrol

# F11
bindsym $mod+F11 exec --no-startup-id chromium -incognito

# F12
bindsym $mod+F12 exec --no-startup-id i3lock -c 000000
bindsym $mod+Shift+F12 exec --no-startup-id i3lock -c 000000 && systemctl suspend

# Screenshot
bindsym --release Print exec --no-startup-id maim -u -s --format=png /dev/stdout | xclip -i -selection clipboard -t image/png
bindsym --release Control+Print exec --no-startup-id ~/scripts/save_ss.sh

# Tab
bindsym $mod+Tab exec --no-startup-id floyd



##############################
# WORKSPACES
##############################
workspace 10 output DVI-D-0
#workspace 10 output VGA-1








exec --no-startup-id "i3-msg 'workspace 1; append_layout ~/.i3/workspace-1.json'"
exec --no-startup-id xterm

exec --no-startup-id "i3-msg 'workspace 2; append_layout ~/.i3/workspace-2.json'"
exec --no-startup-id firefox

exec --no-startup-id "i3-msg 'workspace 3; append_layout ~/.i3/workspace-3.json'"
exec --no-startup-id rambox

exec --no-startup-id "i3-msg 'workspace 2;'"
