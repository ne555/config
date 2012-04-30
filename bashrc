#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#start xfce at login
if [ "$(tty)" = "/dev/tty1" -o "$(tty)" = "/dev/vc/1" ]; then
	#startxfce4 
	startx 
fi

#redshift -l 55.7:12.6 -t 5700:5700 -g 0.8 -m vidmode -v -o

#autofoto
~/foto.sh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rename='perl-rename'
#PS1='[\u@\h \W]\$ '
PS1='\h@\u:\W\$ '

#autocomplete after command
complete -cf sudo
complete -cf man
complete -cf whatis

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

#vi bindings
#set -o vi

#man pages with color
export LESS_TERMCAP_mb=$'\E[01;31m' # begin blinking
export LESS_TERMCAP_md=$'\E[01;37m' # begin bold
export LESS_TERMCAP_me=$'\E[0m' # end mode
export LESS_TERMCAP_se=$'\E[0m' # end stand-out mode
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin stand-out mode - info box
export LESS_TERMCAP_ue=$'\E[0m' # end underline
export LESS_TERMCAP_us=$'\E[00;32m' # begin underline

export EDITOR=vim

shopt -s checkwinsize
#Todas las screens comparten el mismo historial
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend
#export PROMPT_COMMAND="$PROMPT_COMMAND:history -a: history -n"
#export HISTCONTROL=ignorespace:erasedups
export HISTCONTROL=erasedups
export HISTIGNORE="clear:exit:[bf]g:ls:cd:ls *:cd *:  *"

d=~/.dircolors
test -r $d && eval "$(dircolors $d)"

#redshift -l 45:0 -t 5700:5700 -g 0.8 -m vidmode -o #ajusta el color para que no se descuajeringue el monitor.
set -o vi

#don't clear the screen on exit
export PAGER='less -X'

