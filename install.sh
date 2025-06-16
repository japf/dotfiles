#!/bin/bash

# GitHub Codespaces dotfiles install script
# This script sets up the dotfiles by copying them to the home directory

echo "Installing dotfiles..."

# Copy .bashrc to home directory, backing up existing one
if [ -f "$HOME/.bashrc" ]; then
    echo "Backing up existing .bashrc to .bashrc.backup"
    cp "$HOME/.bashrc" "$HOME/.bashrc.backup"
fi

echo "Copying .bashrc to home directory..."
cp .bashrc "$HOME/.bashrc"

# Copy .gitconfig if it exists
if [ -f ".gitconfig" ]; then
    echo "Copying .gitconfig to home directory..."
    cp .gitconfig "$HOME/.gitconfig"
fi

# Copy other utility scripts
if [ -f ".run-npm-test.sh" ]; then
    echo "Copying .run-npm-test.sh to home directory..."
    cp .run-npm-test.sh "$HOME/.run-npm-test.sh"
    chmod +x "$HOME/.run-npm-test.sh"
fi

echo "Dotfiles installation complete!"
echo "Please run 'source ~/.bashrc' or restart your terminal to apply the changes."
