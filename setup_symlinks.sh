#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

echo "Setting up symlinks..."

# NOTE: unsafe to run if these files exist
ln -s $DOTFILES_DIR/tmux.conf ~/.tmux.conf
ln -s $DOTFILES_DIR/nvim ~/.config/nvim

echo "Done."
