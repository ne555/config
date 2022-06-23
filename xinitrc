#!/bin/sh

#music daemon
#mpd $HOME/.config/mpd.conf

#keyboard layout
setxkbmap -rules evdev -model evdev -layout us,ru -variant altgr-intl,ruu
setxkbmap -option 'compose:menu'
setxkbmap -option 'grp:shifts_toggle'
#multimedia keys
xmodmap $HOME/.config/Xmodmap
#xbindkeys --file $HOME/.config/xbindkeysrc
#fix monitor
#$HOME/test/x11/load_lut.bin < $HOME/test/x11/original_lut

#para poder tener X dentro de chroot
#xhost +local:

exec ratpoison --file $HOME/.config/ratpoisonrc
#exec startlxde
#exec startxfce4
