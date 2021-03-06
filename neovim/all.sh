#!/bin/bash

set -e

nvim_dir=$HOME/.config/nvim

if [ ! -d $nvim_dir ]; then
    mkdir -p $nvim_dir
fi


ln -s -f ~/.vim $nvim_dir
ln -s -f ~/.vimrc $nvim_dir/init.vim
ln -s -f ~/.dotfiles/neovim/colors $nvim_dir/colors

