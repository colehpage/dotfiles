# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

ZSH_THEME="af-magic"

plugins=(git colored-man-pages colorize pip python brew macos)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# CONFIGS
alias zshconfig="nvim ~/.zshrc"
alias yconfig="nvim ~/.yabairc"
alias skhdconfig="nvim ~/.skhdrc"
alias alconfig="nvim ~/.config/alacritty/alacritty.yml"
alias sbconfig="nvim ~/.config/sketchybar/sketchybarrc"
alias tmuxconfig="nvim ~/.tmux.conf"


alias restarttmux="tmux source-file ~/.tmux.conf"
# ZSH
alias zshreload="source ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

alias sshhome="cd ~/.ssh"

# DOCKER
alias dockerpurge="docker system prune -a --volumes"
alias restartdock="rm /var/folders/*/*/*/com.apple.dock.iconcache; killall Dock"

# YABAI
alias restartyabai="launchctl kickstart -k 'gui/${UID}/homebrew.mxcl.fyabai'"
alias restartsb="brew services restart sketchybar"

alias brewup="brew upgrade"

alias awskey="echo AKIASG7LNLQJ77QWSTN4"
alias awssecret="echo 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"

alias vim="nvim"
alias vi="nvim"

# COMPOUND
alias frontend="cd ~/repos/frontend"
alias backend="cd ~/repos/backend"
alias migrate="npx sequelize db:migrate"

alias test="doppler run --command='yarn test'"

source $(brew --prefix nvm)/nvm.sh

eval "$(fnm env --use-on-cd)"

# Aliases for common dirs
alias home="cd ~"

# System Aliases
alias ..="cd .."

# LSD Aliases
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Git Aliases
alias add="git add"
alias commit="git commit"
alias pull="git pull"
alias fetch="git fetch"
alias stat="git status"
alias gdiff="git diff HEAD"
alias vdiff="git difftool HEAD"
alias log="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias cfg="git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

alias enableroundedcorners="defaults write -g AppleUseCoreUI -bool true ; killall Finder"
alias disableroundedcorners="defaults write -g AppleUseCoreUI -bool false ; killall Finder"

# pyenv
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Sketchybar interactivity overloads
function brew() {
  command brew "$@" 

  if [[ $* =~ "upgrade" ]] || [[ $* =~ "update" ]] || [[ $* =~ "outdated" ]]; then
    sketchybar --trigger brew_upgrade
  fi
}

function mas() {
  command mas "$@" 

  if [[ $* =~ "upgrade" ]] || [[ $* =~ "update" ]] || [[ $* =~ "outdated" ]]; then
    sketchybar --trigger brew_upgrade
  fi
}

function zen () {
  ~/.config/sketchybar/plugins/zen.sh $1
}


function push() {
  command git push
  sketchybar --trigger git_push
}

alias n="nnn"
function nnn () {
    command nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
    fi
}

function swapFiles() {
    if (( $# == 2)) ; then
        TMPFILE=$(mktemp $(dirname "$1")/XXXXXX)
        mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE "$2"
    else
        echo "Error: Two valid file paths required"
        return 1
    fi
}

alias yswap="swapFiles ~/.yabairc ~/.yabaircswap; restartyabai"

export NNN_TMPFILE="$HOME/.config/nnn/.lastd"
export EDITOR="$(which nvim)"
export NVM_DIR=~/.nvm

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
