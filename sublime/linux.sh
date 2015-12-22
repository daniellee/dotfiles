#!/bin/bash

cd "$(dirname "$0")"

<<<<<<< HEAD
echo "   Installing Sublime Text 3 Preferences"
||||||| merged common ancestors
echo "   Installing Sublime Text 2 Preferences"
=======
echo "Installing Sublime Text Link"

# ln --symbolic "$HOME/.dotfiles/sublime/User" "$HOME/.config/sublime-text-3/Packages/User"

>>>>>>> c9d26d0c70ac02e2becd0261278cb6865345760a

<<<<<<< HEAD
cp -v User/* ~/.config/sublime-text-3/Packages/User/
||||||| merged common ancestors
cp -v User/* ~/.config/sublime-text-2/Packages/User/
=======
>>>>>>> c9d26d0c70ac02e2becd0261278cb6865345760a
