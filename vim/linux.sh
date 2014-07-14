#!/bin/bash

set -e

cp -r vim ~/.vim
rm -rf ~/.vim/colors
ln -s ~/.dotfiles/vim/colors ~/.vim/colors
