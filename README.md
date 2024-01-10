# CHP Dotfiles

[![shellcheck](https://github.com/colehpage/.dotfiles/actions/workflows/shell.yml/badge.svg)](https://github.com/colehpage/.dotfiles/actions/workflows/shell.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the home of all my dotfiles. These are special files that add custom
configurations to my computer and applications, primarily the terminal.

These dotfiles are for a **MacOS** dev environment and they handle:
- installation of packages and applications
- stowing of config files
- settings of OS configurations

# Screenshots

TODO

# Installation

> [!WARNING]
> Please review the scripts and packages that are installed and settings before running the install script - they may be out of date, incomplete, have issues, or simply not fit your needs. This repo is not necessarily a comprehensive reusable install process and may change at times.

Run the `dotfiles` script:
```sh
curl -sO https://raw.githubusercontent.com/colehpage/.dotfiles/main/dotfiles
```

# Scripts

The currently used install scripts. Add and modify as needed.

- `scripts/packages.sh`: all the `homebrew` taps and packages to install
- `scripts/fonts.sh`: `homebrew` fonts to install
- `scripts/apps.sh`: `homebrew` casks to install
- `scripts/cli.sh`: CLI apps from different sources
- `scripts/osx.sh`: **MacOS** settings
- `scripts/config.sh`: general settings and dotfiles

# Homebrew

To just install dumped homebrew packages:

With homebrew installed run `brew bundle install` to install everything in the
Brewfile.

This will take a while so have some patience.

# Hardware + OS

- Laptop: M3 MacBook Pro (14-inch, 2023)
- OS: macOS Sonoma 14.2.1
- Keyboard(s): 
  - Current Primary: Keychron K7 Ultra-slim Wireless
  - Current Secondary: Leopold FC660C with Norbauer Heavy-6 Case in Aperture
  - Others...
- Mouse: Logitech MX Master 3s

# Desktop

## [Yabai](https://github.com/koekeishiya/yabai)

## [Sketchybar](https://github.com/FelixKratz/SketchyBar)

## [JankyBorders](https://github.com/FelixKratz/JankyBorders)

## [SKHD](https://github.com/koekeishiya/skhd)

## [Raycast](https://www.raycast.com/)

# Terminal/Shell/Package Manager

## Terminal: [Alacritty](https://github.com/alacritty/alacritty)

## Terminal Prompt: [Starship](https://github.com/starship/starship)

## Shell: [Nushell](https://github.com/nushell/nushell)

## Package Manager: [Homebrew](https://brew.sh/)

# File Manager

## [Ranger](https://github.com/ranger/ranger)

TODO

# MultiPlexer

## [Zellij](https://github.com/zellij-org/zellij)

TODO

# Code Editor(s)

[Neovim](https://github.com/neovim/neovim)

## Details

TODO

Plugins:
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [Cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-lua](https://github.com/nvim-lua)
- [nvim-lualine](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- more...

For all plugins/packages check out the `packer` config [file](./stow/nvim/lua/colehpage/packer-config.lua)

## Screenshots

TODO

[Visual Studio Code](https://code.visualstudio.com/)

## Details

TODO

## Screenshots

TODO

# Source Control

[LazyGit](https://github.com/jesseduffield/lazygit#homebrew)

# Web Browser

[Arc](https://arc.net/)

# Appearance

- Font: [Hack Nerd Font Mono](https://www.nerdfonts.com/font-downloads)
- Color Pallette: [Tokyo Night Gogh](https://github.com/cesaralvarod/tokyogogh.nvim)

# Other

## Some Regularly Used Applications
- [1Password](https://1password.com/)
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12)
- [AppCleaner](https://freemacsoft.net/appcleaner/)
- [AtlasVPN](https://atlasvpn.com/)
- [Boop](https://github.com/IvanMathy/Boop)
- [Cron](https://cron.com/)
- [DBeaver](https://dbeaver.io/)
- [Docker](https://www.docker.com/)
- [Duti](https://github.com/moretension/duti)
- [VLC](https://www.videolan.org/)
- [Karabiner-Elements](https://github.com/pqrs-org/Karabiner-Elements)
- [Linear](https://linear.app/)
- [Logi Options+](https://www.logitech.com/en-us/software/logi-options-plus.html)
- [Loom](https://www.loom.com/)
- [LinearMouse](https://github.com/linearmouse/linearmouse)
- [Numi](https://numi.app/)
- [Onyx](https://titanium-software.fr/en/onyx.html)
- [Pika](https://github.com/superhighfives/pika)
- [Postico](https://eggerapps.at/postico/)
- [Postman](https://www.postman.com/)
- [qBittorrent](https://www.qbittorrent.org/)
- [Signal](https://signal.org/)
- [Slack](https://slack.com/)
- [Spotify](https://open.spotify.com/)
- [Zoom](https://zoom.us/)

## Downloads

- curl -L
  https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.3/sketchybar-app-font.ttf
  -o $HOME/Library/Fonts/sketchybar-app-font.ttf


## Disabling System Integrity Protection

Various aspects of this setup require you to disable SIP.

Check out the [Yabai Documentation](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection) or the [Apple Developer Documentation](https://developer.apple.com/documentation/security/disabling_and_enabling_system_integrity_protection) for details and instructions.

# TODO

- Finish ZSH->NuShell documentation
- Finish README....