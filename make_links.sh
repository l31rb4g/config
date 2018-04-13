#!/bin/bash


CONFDIR=$HOME/config


ln -s $CONFDIR/.vimrc $HOME

mkdir -p $HOME/.config/i3
ln -s $CONFDIR/i3 $HOME/.config/i3/config

mkdir -p $HOME/.config/i3status
ln -s $CONFDIR/i3status $HOME/.config/i3status/config

#mkdir -p $HOME/.config/terminator
#ln -s $CONFDIR/terminator $HOME/.config/terminator/config

ln -s $CONFDIR/.Xresources $HOME

