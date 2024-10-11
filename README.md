# dotfiles
My dotfiles. Managed by chezmoi.

## Prerequisites

Before using these dotfiles, ensure you have the following tools installed:

1. [Homebrew](https://brew.sh/): Package manager for macOS
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

2. [iTerm2](https://formulae.brew.sh/cask/iterm2#default): A terminal emulator for macOS
  ```
  brew install --cask iterm2
  ```

3. [Oh My Zsh](https://ohmyz.sh/#install): A framework for managing your Zsh configuration
  ```
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

4. [Starship](https://formulae.brew.sh/formula/starship#default): Cross-shell prompt
  ```
  brew install starship
  ```

## How to use it:
COMING SOON

## Update:
COMING SOON

## Troubleshooting

If you encounter any issues with existing files when creating symlinks, you may need to backup or remove the existing files first. For example:

```
mv ~/.zshrc ~/.zshrc.backup
mv ~/.config/starship.toml ~/.config/starship.toml.backup
```

Then retry creating the symlinks.

## Additional Resources

- [Homebrew Documentation](https://docs.brew.sh/)
- [iTerm2 Documentation](https://iterm2.com/documentation.html)
- [Oh My Zsh Wiki](https://github.com/ohmyzsh/ohmyzsh/wiki)
- [Starship Documentation](https://starship.rs/guide/)

Feel free to customize these dotfiles to suit your needs. Happy coding!
