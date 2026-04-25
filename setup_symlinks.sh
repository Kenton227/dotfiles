#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

echo "Setting up symlinks..."

ln -s $DOTFILES_DIR/nvim ~/.config/nvim

echo "Done."
