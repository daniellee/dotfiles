cd $HOME
#!/bin/bash
mkdir bin
mkdir opt

# Essentials (source control)
sudo apt-get -y install git-core git-doc git-flow mercurial subversion
sudo apt-get -y install tig

# Development (Math)
sudo apt-get -y install gsl-bin

# Development (general)
sudo apt-get -y install g++ cpp
sudo apt-get -y install gcc colorgcc autoconf
sudo apt-get -y install cmake scons

# Screen Multiplexers
sudo apt-get -y install screen tmux

# VIM sudo apt-get -y build-dep vim
sudo apt-get -y install exuberant-ctags cscope xclip

# Python
sudo apt-get -y install python-dev python-pip python3-dev python3-pip

# Neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get -y install neovim
pip install neovim

#node js
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install --yes nodejs

# silver searcher
sudo apt-get install --yes silversearcher-ag
