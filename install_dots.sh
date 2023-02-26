#!/bin/bash

# make important folders
mkdir ~/archive ~/configs ~/docs ~/workshops ~/library ~/temp ~/Portal ~/sync
mkdir -p ~/.config/composer ~/.config/bash-completion ~/.local/share

touch ~/.env

# link folders
ln -sf $(pwd)/.doom.d $HOME/.doom.d
ln -sf $(pwd)/.fonts $HOME/.fonts
ln -sf $(pwd)/.fonts $HOME/.local/share/fonts

# install doom emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# install space vim
./install_spacevim.sh

# make symbolic links to dotfiles  -> one source of truth
find . -maxdepth 1 -type f -name ".*" | while read dotfile; do clean_name="${dotfile/.\//}"; ln -sf $(pwd)/$clean_name $HOME/$clean_name; done

# bash completion files
ln -s $(pwd)/autocomplete/composer.completion.bash ~/.config/bash-completion/composer.completion.bash
ln -s $(pwd)/autocomplete/docker.completion.bash ~/.config/bash-completion/docker.completion.bash
ln -s $(pwd)/autocomplete/docker-compose.completion.bash ~/.config/bash-completion/docker-compose.completion.bash
ln -s $(pwd)/autocomplete/makefile.completion.bash ~/.config/bash-completion/makefile.completion.bash
ln -s $(pwd)/autocomplete/pip3.completion.bash ~/.config/bash-completion/pip3.completion.bash
ln -s $(pwd)/autocomplete/pip.completion.bash ~/.config/bash-completion/pip.completion.bash
ln -s $(pwd)/autocomplete/ssh.completion.bash ~/.config/bash-completion/ssh.completion.bash
ln -s $(pwd)/autocomplete/system.completion.bash ~/.config/bash-completion/system.completion.bash
ln -s $(pwd)/autocomplete/tmux.completion.bash ~/.config/bash-completion/tmux.completion.bash
ln -s $(pwd)/autocomplete/tasks.completion.bash ~/.config/bash-completion/tasks.completion.bash
ln -s $(pwd)/autocomplete/vagrant.completion.bash ~/.config/bash-completion/vagrant.completion.bash
ln -s $(pwd)/autocomplete/watson.complete ~/.config/bash-completion/watson.complete



