#!/bin/bash

# xrdb $HOME/.Xresources
source $HOME/.profile

# https://www.debian.org/devel/passwordlessssh
# ssh-add
workrave &
redshift &
telegram-desktop &
[[ -x $HOME/.screenlayout/default.sh ]] && $HOME/.screenlayout/default.sh

exec dwm
# exec xmonad
# exec cinnamon-session
