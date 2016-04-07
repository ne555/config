#!/bin/sh

#music daemon
mpd /home/ne555/.config/mpd.conf

#keyboard layout
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl
#multimedia keys
xmodmap /home/ne555/.config/Xmodmap
xbindkeys -f /home/ne555/.config/xbindkeysrc
#fix monitor
#redshift -l 55.7:12.6 -t 5500:5500 -g 0.8 -m vidmode -v -o

#exec gnome-session
#exec startkde
#exec ck-launch-session startxfce4
# ...or the Window Manager of your choice
#exec ck-launch-session dbus-launch startfxce4
#exec awesome
exec ratpoison --file /home/ne555/.config/ratpoisonrc
#exec fluxbox
#exec pawm
#exec fusion-icon

#exec ck-launch-session compiz ccp

