#!/bin/bash

# make important folders
mkdir ~/archive ~/docs ~/workshops ~/library ~/temp ~/Portal ~/sync
mkdir -p ~/.config/composer ~/.local/share/fonts
mkdir ~/.fonts


# link folders
ln -sf $(pwd)/.doom.d $HOME/.doom.d
ln -sf $(pwd)/.fonts $HOME/.fonts
ln -sf $(pwd)/.fonts $HOME/.local/share/fonts

# install doom emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# make symbolic links to dotfiles  -> one source of truth
find . -maxdepth 1 -type f -name ".*" | while read dotfile; do clean_name="${dotfile/.\//}"; ln -sf $(pwd)/$clean_namea $HOME/$clean_name; done
