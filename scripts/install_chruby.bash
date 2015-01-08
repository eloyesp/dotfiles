#!/bin/bash

set -e

CHRUBY_VERSION="0.3.9"
CHRUBY_BIN=/usr/local/bin/chruby-exec
DOWNLOAD_FOLDER="$HOME/downloads"

install_chruby() {
  echo "Installing chruby $CHRUBY_VERSION"
  mkdir -p $HOME/downloads
  cd $HOME/downloads
  wget -O - \
    https://github.com/postmodern/chruby/archive/v$CHRUBY_VERSION.tar.gz |
    tar -xzvk
  cd chruby-$CHRUBY_VERSION
  make install
}


if [[ -x $CHRUBY_BIN ]] && [[ `$CHRUBY_BIN --version` =~ $CHRUBY_VERSION ]]
then echo good version
else install_chruby
fi
