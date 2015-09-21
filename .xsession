#!/bin/bash

xrdb $HOME/.Xresources
source $HOME/.profile

# https://www.debian.org/devel/passwordlessssh
# ssh-add
workrave &
redshift &
[[ -x $HOME/.screenlayout/default.sh ]] && $HOME/.screenlayout/default.sh

xmonad
