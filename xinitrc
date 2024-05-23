#!/bin/sh

#keyboard layout
setxkbmap -rules evdev -model evdev -layout us,ru -variant altgr-intl,ruu
setxkbmap -option 'compose:menu'
setxkbmap -option 'grp:shifts_toggle'
#multimedia keys
xmodmap ~/.config/Xmodmap
#desktop notifications
statnot ~/.config/statnot.py &

#shortcuts
xbindkeys -fg ~/.config/xbindkeysrc.scm

dunst -conf ~/.config/dunst/dunstrc &
exec ratpoison --file ~/.config/ratpoisonrc
