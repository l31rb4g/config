#!/bin/bash


CONFDIR=$HOME/config


ln -s $CONFDIR/.vimrc $HOME

mkdir -p $HOME/.conf/i3
ln -s $CONFDIR/i3 $HOME/.conf/i3/config

mkdir -p $HOME/.conf/i3status
ln -s $CONFDIR/i3status $HOME/.conf/i3status/config

mkdir -p $HOME/.conf/terminator
ln -s $CONFDIR/terminator $HOME/.conf/terminator/config
