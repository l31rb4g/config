#
# ~/.bashrc
#

HOME='/home/l31rb4g'

CHARSET='UTF-8'
export LANG=en_US.$CHARSET;
export LC_ALL=en_US.$CHARSET;
export MM_CHARSET=$CHARSET;

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -G'

if [ $TERM == 'linux' ]; then
    PS1='[\u@\h \W]\$ '
else
    #PS1='[\e[32m\u\e[0m@\e[34m\h\e[0m \e[33m\w\e[0m]\$ '
    PS1='[\[\e[32m\]\u\[\e[0m\]@\[\e[34m\]\h\[\e[0m\] \[\e[33m\]\w\[\e[0m\]]\$ '
fi


# VIRTUALENVWRAPPER
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh


# BASH COMPLETION
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
    source /usr/local/share/bash-completion/bash_completion.sh


# LSCOLORS
#export LSCOLORS='exfxcxdxbxegedabagacad'



# COLORED MANUALS
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

