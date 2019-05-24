#
# ~/.bashrc
#


HOME='/home/l31rb4g'
CHARSET='UTF-8'

export LANG=en_US.$CHARSET
export LC_ALL=en_US.$CHARSET
export MM_CHARSET=$CHARSET
export HISTCONTROL=ignorespace

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color'
alias wo='workon'
alias ag='ag --ignore tags'

. $HOME/.git-prompt.sh

# VIRTUALENVWRAPPER
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh


if [ $TERM == 'linux' ]; then
    PS1='[\u@\h \W]\$ '
else
    PS1='[\[\e[32m\]\u\[\e[m\] \[\e[33m\]\w\[\e[m\]]$(__git_ps1 "[\e[34m%s\e[m]")\$ '
fi


# BASH COMPLETION
[[ $PS1 && -f /usr/share/bash-completion/bash_completion.sh ]] && \
    source /usr/local/share/bash-completion/bash_completion.sh


# COLORED MANUALS
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


# Dolphin
export XDG_CURRENT_DESKTOP=kde

# Added by n-install (see http://git.io/n-install-repo).
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  
