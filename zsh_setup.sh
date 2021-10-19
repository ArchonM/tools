#!/bin/bash

sed -i 's|ZSH_THEME=.*|ZSH_THEME="agnoster"|' ~/.zshrc
line=$(sed -n '/plugins/=' ~/.zshrc | sed -n "2"p)
sed -i "${line}s|plugins=.*|plugins=(git extract zsh-syntax-highlighting zsh-autosuggestions)|" ~/.zshrc
source ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
