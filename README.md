# CHP Dotfiles

This is the home of all my dotfiles. These are special files that add custom
configurations to my computer and applications, primarily the terminnal.

# Everything

Run the `install.sh` script to run the entire flow
# Homebrew

To just install dumped homebrew packages:

With homebrew installed run `brew bundle install` to install everything in the
Brewfile.

This will take a while so have some patience.

# Hardware

- Laptop: M1 MacBook Pro (14-inch, 2021)
  - Keyboard: Leopold FC660C with Norbauer Heavy-6 in Aperture
  - Mouse: Logitech MX Master 3s

# Mackup

- First: `cp ~/repos/dotfiles/mackup/.mackup.cfg ~/.mackup.cfg`
- Then: `mackup restore`

# Apps

- Terminal:
  - Alacritty

# Software

- Package Manager: Homebrew
- Shell: zsh
- Multiplexer: tmux
- Editor: Neovim
- Git: lazygit
- Docker: lazydocker

# Appearance

- Font: Hack Nerd Font Mono
- Colors: Tokyo Night

# Other installation pieces

- curl -L
  https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.3/sketchybar-app-font.ttf
  -o $HOME/Library/Fonts/sketchybar-app-font.ttf
- https://github.com/catppuccin/spicetify
