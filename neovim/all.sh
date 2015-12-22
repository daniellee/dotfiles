#!/bin/bash

set -e

mkdir -p ~/.nvim
rm -rf ~/.nvim/colors
ln -s ~/.dotfiles/neovim/colors ~/.nvim/colors
