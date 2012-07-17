#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

#Section "InputClass"
#	Identifier "Keyboard Defaults"
#	MatchIsKeyboard "yes"
#	Option  "XkbLayout" "us"
#	Option  "XkbVariant" "altgr-intl"
#EndSection


#music daemon
mpd /home/ne555/.config/mpd.conf

xrandr -s 1280x800
#keyboard layout
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl
#multimedia keys
xmodmap ~/.config/Xmodmap
xbindkyes -f ~/.config/xbindkeysrc
#fix monitor
redshift -l 55.7:12.6 -t 5000:5000 -g 0.8 -m vidmode -v -o

# exec gnome-session
# exec startkde
#exec ck-launch-session startxfce4
# ...or the Window Manager of your choice
#exec ck-launch-session dbus-launch startfxce4
#exec awesome
exec ratpoison
#exec fluxbox
#exec pawm

