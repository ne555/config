#!/bin/sh

#keyboard layout
setxkbmap -rules evdev -model evdev -layout us,ru -variant altgr-intl,ruu
setxkbmap -option 'compose:menu'
setxkbmap -option 'grp:shifts_toggle'
#multimedia keys
xmodmap $HOME/.config/Xmodmap

exec ratpoison --file $HOME/.config/ratpoisonrc
