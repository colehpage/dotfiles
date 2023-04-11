#! /bin/sh

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

step "Installing xcode command line tools if not already installed"
xcode-select -p &> /dev/null
if [ $? -ne 0 ]; then
  echo "Xcode CLI tools not found. Installing them..."
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  softwareupdate -i "$PROD" -v;
else
  echo "'xcode command line tools' is already installed, you're set."
fi

# HOMEBREW

step "Installing homebrew if not already installed"
if ! command -v brew &> /dev/null
then
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
   eval "$(/opt/homebrew/bin/brew shellenv)"
else
   echo "brew is already installed, you're set."
   sleep 1
fi

# HOMEBREW PACKAGES
step "Installing homebrew packages..."
sh instal/brew.sh --unattended

# OH MY ZSH AND ZSH PLUGINS

step "Installing dependencies/shell/oh-my-zsh"
cd ~/
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh --unattended
rm -rf install.sh

step "Installing dependencies/shell/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

step "Installing dependencies/shell/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

# DOTFILES

step "Cloning my dotfiles repository"
git clone https://github.com/colehpage/dotfiles ~/dotfiles && cd dotfiles

step "Moving everything to the right place"
configs_home=("alacritty" "cava" "gh" "linearmouse" "lsd" "neofetch" "nnn" "nvim" "raycast" "sketchybar" "skhd" "spicetify" "tmux" "yabai")
for i in "${!configs_home[@]}"; do
    cp -r ~/dotfiles/config/${CONFIGS_HOME[i]} ~/.config/
    echo "Moved ${configs_home[i]}"
done

cp config/zsh/.zshrc ~/.zshrc
echo "Moved zsh"

cp config/starship/starship.toml ~/.config/starship.toml
echo "Moved starship"

# OSX SETTINGS

step "Hiding Dock and menu bar"
read -p "Is your dock currently hidden? (y/n)" dock_hide
if [ $dock_hide == "n" ]; then
  osascript -e "tell application \"System Events\" to set the autohide of the dock preferences to true"
fi

read -p "Is your menu bar currently hidden? (y/n)" menu_hide
if [ $menu_hide == "n" ]; then
    osascript -e 'tell application "System Events"
    tell dock preferences to set autohide menu bar to not autohide menu bar
    end tell'
fi

# SYMLINKS (?)
# step "Creating symlinks"
# sh install/link.sh --unattended

step "Standard OSX settings tweaks"
sh install/osx.sh --unattended

step "make sure dark mode is activated"
osascript -e 'tell application "System Events"
    tell appearance preferences
        set dark mode to true
    end tell
end tell'

step "Starting services"
brew services restart sketchybar
brew services restart yabai
brew services restart skhd

step "All done!"