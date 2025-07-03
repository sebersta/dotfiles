#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y neovim fish tmux joshuto curl wget stow

chsh -s /usr/bin/fish
