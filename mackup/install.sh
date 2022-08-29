#!/bin/bash

echo "Installing dotfiles"

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "Running on OSX"

    echo "Brewing all the things"
    source install/brew.sh

    echo "Updating OSX settings"
    source install/osx.sh
fi

echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."
