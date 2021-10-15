#!/bin/bash

# This is the section of install terminal
# First we need to check and install zsh and oh my zsh
if ! [ -x  "$(command -v zsh)" ]; then
    echo 'zsh is not installed.' >&2
else
    echo 'zsh is installed, skip.' >&1
fi

# Using official script to install oh-my-zsh will stop if already installed
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setting up zshrc
sed -i 's|ZSH_THEME=.*|ZSH_THEME="agnoster"|' ~/.zshrc
line=$(sed -n '/plugins/=' ~/.zshrc | sed -n "2"p)
sed -i "${line}s|plugins=.*|plugins=(git extract zsh-syntax-highlighting zsh-autosuggestions)|" ~/.zshrc
source ~/.zshrc