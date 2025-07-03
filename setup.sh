#!/bin/bash

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt upgrade -y
sudo apt install -y fish tmux  curl wget stow neofetch fzf

sudo apt-get install ninja-build gettext cmake curl build-essential
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

stow .

mkdir -p ~/.local/bin
bash <(curl -s https://raw.githubusercontent.com/kamiyaa/joshuto/master/utils/install.sh)

which fish | sudo tee -a /etc/shells
chsh -s $(which fish)
