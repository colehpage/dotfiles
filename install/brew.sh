step () {
    final=$(echo "$@")
    plus=$(expr ${#final} + 6)

    printhashtags () {
    for i in $(seq $plus); do
        printf "#"
    done

    }

    echo
    printhashtags
    echo "\n## $@ ##"
    printhashtags
    echo
}

install () {
    if ! command -v "$@" &> /dev/null; then
       brew install "$@"
    else
       echo "'$@' is already installed, you're set."
       sleep 1
    fi
}

echo "Installing homebrew packages..."

# TAPS

step "tapping homebrew/services if not already tapped"
brew tap homebrew/services

step "tapping homebrew/bundle if not already tapped"
brew tap homebrew/bundle

step "Installing doppler cli if not already installed"
brew tap dopplerhq/cli
install dopplerhq/cli/doppler

step "Installing dependencies/apps/sketchybar if not already installed"
brew tap FelixKratz/formulae
install sketchybar

step "Tapping koekeishiya repo"
brew tap koekeishiya/formulae

# UTILITIES

step "Installing dependencies/apps/yabai if not already installed"
install yabai

step "Installing dependencies/apps/skhd if not already installed"
install skhd

step "installing dependencies/apps/jq if not already installed"
install jq

step "install wget"
install wget

step "install cmake"
install cmake

step "install awscli"
install awscli

step "install docker"
install docker

step "install docker-machine"
install docker-machine

step "install gh"
install gh

step "install git"
install git

step "install lazygit"
install lazygit

step "install jq"
install jq

step "install gnupg"
install gnupg

step "install linearmouse"
install linearmouse

step "install switchaudio-osx"
install switchaudio-osx

step "install wallpaper"
install wallpaper

step "install mas"
install mas

# LANGUAGES/DB/TOOLS

step "Installing dependencies/apps/go if not already installed"
install go

step "Installing dependencies/apps/python if not already installed"
install python

step "Installing dependencies/apps/rust if not already installed"
install rust

step "Installing dependencies/apps/node if not already installed"
install node

step "Installing dependencies/apps/nvm if not already installed"
install nvm

step "Installing dependencies/apps/yarn if not already installed"
install yarn

step "Installing dependencies/apps/redis if not already installed"
install redis

step "Installing dependencies/apps/postgresql@15 if not already installed"
install postgresql@15

step "Installing dependencies/apps/dbeaver-community if not already installed"
install dbeaver-community

step "Installing dependencies/apps/postico if not already installed"
install postico

step "Installing dependencies/apps/postman if not already installed"
install postman

# TERMINAL

step "Installing dependencies/apps/bottom if not already installed"
install bottom

step "Installing dependencies/apps/starship if not already installed"
install starship

step "Installing dependencies/apps/fnm if not already installed"
install fnm

step "Installing dependencies/apps/fzf if not already installed"
install fzf

step "Installing dependencies/apps/ncurses if not already installed"
install ncurses

step "Installing dependencies/apps/htop if not already installed"
install htop

step "Installing dependencies/apps/lsd if not already installed"
install lsd

step "Installing dependencies/apps/neofetch if not already installed"
install neofetch

step "Installing dependencies/apps/tree-sitter if not already installed"
install tree-sitter

step "Installing dependencies/apps/neovim if not already installed"
install neovim

step "Installing dependencies/apps/nnn if not already installed"
install nnn

step "Installing dependencies/apps/alacritty if not already installed"
install alacritty

step "Installing dependencies/apps/cava if not already installed"
install cava

step "Installing dependencies/shell/starship if not already installed"
install starship

step "Installing dependencies/apps/zsh if not already installed"
install zsh

step "install zoxide"
install zoxide

# TMUX

step "Installing dependencies/apps/tmux if not already installed"
install tmux

step "Installing dependencies/apps/reattach-to-user-namespace if not already installed"
install reattach-to-user-namespace

# BROWSERS

step "Installing apps/arc"
brew install arc

step "Installing apps/firefox"
brew install firefox

step "Installing apps/google-chrome"
brew install google-chrome

# FONTS

step "Tapping fonts repo"
brew tap homebrew/cask-fonts

step "Installing dependencies/fonts/ubuntu"
brew install font-ubuntu

step "Installing dependencies/fonts/font-awesome"
brew install font-fontawesome

step "Installing dependencies/fonts/hack-nerd-font"
brew install font-hack-nerd-font

step "Installing dependencies/fonts/fira-code-nerd-font"
brew install font-fira-code-nerd-font

step "Installing dependencies/fonts/monoscraft"
brew install font-monocraft

step "Installing dependencies/fonts/material-icons"
brew install font-material-icons

step "Installing dependencies/fonts/sf-symbols"
brew install sf-symbols

# GENERAL APPLICATIONS

step "Installing apps/1password if not already installed"
install 1password

step "Installing apps/cron if not already installed"
install cron

step "Installing apps/daisydisk if not already installed"
install daisydisk

step "Installing apps/figma if not already installed"
install figma

step "Installing apps/iina if not already installed"
install iina

step "Installing apps/karabiner-elements if not already installed"
install karabiner-elements

step "Installing apps/linear-linear if not already installed"
install linear-linear

step "Installing apps/loom if not already installed"
install loom

step "Installing apps/numi if not already installed"
install numi

step "Installing apps/pika if not already installed"
install pika

step "Installing apps/raycast if not already installed"
install raycast

step "Installing apps/secretive if not already installed"
install secretive

step "Installing apps/slack if not already installed"
install slack

step "Installing apps/spotify if not already installed"
install spotify

step "Installing apps/visual-studio-code if not already installed"
install visual-studio-code

step "Installing apps/zoom if not already installed"
install zoom

step "Installing apps/zoom if not already installed"
install remarkable

# Install homebrew packages individually

# Install homebrew packages from Brewfile
# uncomment for simplified install
# brew bundle install

exit 0
