#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

set -e

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd "$(dirname "$0")"

# homebrew packages

TAPS=(
    homebrew/binary
    homebrew/dupes
    homebrew/versions
    caskroom/cask
    caskroom/versions
)

FORMULAS=(
    autoconf
    automake
    caskroom/cask/brew-cask
    coreutils
    ctags
    docker
    go
    pkg-config
)

CASKS=(
    node
    p4merge
    skype
    spotify
    sublime-text3
    vlc
)

for tap in ${TAPS[@]}
do
    brew tap $tap
done

brew install ${FORMULAS[@]}

brew update

brew cask install ${CASKS[@]}

# Special cases that need flags...
brew install macvim --with-cscope --with-lua --HEAD
brew install vim --with-lua
brew linkapps macvim

brew cleanup

exit 0
