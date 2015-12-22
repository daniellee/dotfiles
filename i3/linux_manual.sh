#!/bin/bash

set -e

cd "$(dirname "$0")"

pip install i3-py
pip install quickswitch-i3
pip install i3pystatus

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

link_files () {
  if [ -f $2 ]
  then
    success "Alerady linked $1 to $2"
  else
    ln -s $1 $2
    success "linked $1 to $2"
  fi
}

link_files ~/.dotfiles/i3/config ~/.i3/config
link_files ~/.dotfiles/i3/i3status.config.py ~/.i3/i3status.config.py
