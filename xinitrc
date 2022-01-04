#!/bin/sh

#music daemon
mpd /home/ne555/.config/mpd.conf

#keyboard layout
setxkbmap -rules evdev -model evdev -layout us,ru -variant altgr-intl,ruu
setxkbmap -option 'compose:menu'
setxkbmap -option 'grp:shifts_toggle'
#multimedia keys
xmodmap /home/ne555/.config/Xmodmap
#xbindkeys --file /home/ne555/.config/xbindkeysrc
#fix monitor
/home/ne555/test/x11/load_lut.bin < /home/ne555/test/x11/original_lut

#para poder tener X dentro de chroot
#xhost +local:

exec ratpoison --file /home/ne555/.config/ratpoisonrc
#exec startlxde
#exec startxfce4
