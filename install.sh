#!/bin/bash

set -e

GREEN='\e[32m'
RED='\e[31m'
NORMAL='\e[0m'

function require() {
  if [ $(which $1) ]
  then
    echo -e "[$GREEN OK $NORMAL] $1"
  else
    echo -e "[$RED FAILED $NORMAL] $1"
  fi
}

echo
echo "# Checking requirements #"
echo
require "zsh"
