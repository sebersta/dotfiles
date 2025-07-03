#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y neovim fish tmux  curl wget stow neofetch

stow .

mkdir -p ~/.local/bin
bash <(curl -s https://raw.githubusercontent.com/kamiyaa/joshuto/master/utils/install.sh)

which fish | sudo tee -a /etc/shells
chsh -s $(which fish)
