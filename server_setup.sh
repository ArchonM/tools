#!/bin/bash

# First we need to check and install zsh and oh my zsh
if ! [ -x  "$(command -v zsh)" ]; then
    echo 'zsh is not installed.' >&2
else
    echo 'zsh is installed, skip.' >&1
fi
