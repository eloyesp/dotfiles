#!/bin/bash

xrdb $HOME/.Xresources
source $HOME/.profile

# https://www.debian.org/devel/passwordlessssh
# ssh-add
workrave &
redshift &

xmonad
