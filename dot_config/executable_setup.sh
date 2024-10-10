#!/bin/bash

set -e

# Function to check if running on macOS
is_macos() {
  [[ "$OSTYPE" == "darwin"* ]]
}

# Function to check if running on WSL
is_wsl() {
  grep -qE "(Microsoft|WSL)" /proc/version &>/dev/null
}

# Install Homebrew
install_homebrew() {
  if ! command -v brew &>/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "Homebrew is already installed."
  fi
}

# Install packages
install_packages() {
  if is_macos; then
    echo "Installing Homebrew packages..."
    brew install fd lazygit starship wget ripgrep tree fzf tree-sitter youtube-dl chezmoi neovim rust zsh curl git nvm
    echo "Installing Homebrew casks..."
    brew install --cask postman visual-studio-code rectangle iterm2
  elif is_wsl; then
    echo "Installing WSL packages..."
    sudo apt update
    sudo apt install -y curl git neovim zsh
    # Additional packages can be added here as needed
  fi
}

# Main installation function
main() {
  install_homebrew
  install_packages
}

# Run the main function
main

echo "Setup complete!"
