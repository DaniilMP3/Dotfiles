#!/bin/bash

# VS Code User config directory
VSCODE_USER_DIR="$HOME/.config/Code/User"

# Dotfiles source directory
DOTFILES_VSCODE_DIR="$HOME/Dotfiles/vscode"

echo "Creating symlinks..."

# Symlink settings.json
ln -sf "$DOTFILES_VSCODE_DIR/settings.json" "$VSCODE_USER_DIR/settings.json"

# Symlink keybindings.json
ln -sf "$DOTFILES_VSCODE_DIR/keybindings.json" "$VSCODE_USER_DIR/keybindings.json"

# Symlink snippets directory
ln -sfn "$DOTFILES_VSCODE_DIR/snippets" "$VSCODE_USER_DIR/snippets"

echo "Symlinks created."

# Install extensions
if [ -f "$DOTFILES_VSCODE_DIR/extensions.txt" ]; then
    echo "Installing extensions from extensions.txt..."
    cat "$DOTFILES_VSCODE_DIR/extensions.txt" | xargs -n 1 code --install-extension
    echo "Extensions installed."
else
    echo "No extensions.txt found in $DOTFILES_VSCODE_DIR"
fi
