#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'

if [ $TERM == 'linux' ]; then
    PS1='[\u@\h \W]\$ '
else
    #PS1='[\e[32m\u\e[0m@\e[34m\h\e[0m \e[33m\w\e[0m]\$ '
    PS1='[\[\e[32m\]\u\[\e[0m\]@\[\e[34m\]\h\[\e[0m\] \[\e[33m\]\w\[\e[0m\]]\$ '
fi


# VIRTUALENVWRAPPER
export WORKON_HOME=$HOME/.virtualenvs
#source /usr/bin/virtualenvwrapper.sh

# BASH COMPLETION
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
    source /usr/local/share/bash-completion/bash_completion.sh
