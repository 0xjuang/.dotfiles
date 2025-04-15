#!/bin/bash

# Dotfiles Installer for @0xjuang
# Symlinks core configuration files into your $HOME directory

DOTFILES_DIR="$HOME/.dotfiles"
BACKUP_DIR="$DOTFILES_DIR/backup"

# Check for Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "[!] Oh My Zsh not found. Please install it first: https://ohmyz.sh"
  exit 1
fi

mkdir -p "$BACKUP_DIR"

link_file() {
  local src="$1"
  local dest="$2"

  if [ -e "$dest" ] || [ -L "$dest" ]; then
    echo "[*] Backing up existing $dest to $BACKUP_DIR"
    mv "$dest" "$BACKUP_DIR"
  fi

  echo "[+] Linking $src -> $dest"
  ln -s "$src" "$dest"
}

# Core dotfiles
link_file "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
link_file "$DOTFILES_DIR/.zsh_aliases" "$HOME/.zsh_aliases"
link_file "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
link_file "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
link_file "$DOTFILES_DIR/ssh_config.example" "$HOME/.ssh_config"

# VSCode
mkdir -p "$HOME/.vscode"
link_file "$DOTFILES_DIR/.vscode/settings.json" "$HOME/.vscode/settings.json"
link_file "$DOTFILES_DIR/.vscode/extensions.list" "$HOME/.vscode/extensions.list"

# Prompt theme (optional)
link_file "$DOTFILES_DIR/gg3.zsh-theme" "$HOME/gg3.zsh-theme"

echo "[✓] Dotfiles successfully linked. Launch a new shell or run 'source ~/.zshrc' to apply changes."
