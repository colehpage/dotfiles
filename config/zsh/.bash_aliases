# fd
alias fd="fdfind"

# fzf
alias sd="cd ~ && cd \$(fd --type d | fzf)"

# NVIM
alias cleanVIMSwaps='rm -rf ~/.local/state/nvim/swap/*.sw[a-p]'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias vn='nvim --clean'

# tmux
alias t='tmux'
alias ta='t a -t'
alias tls='t ls'
alias tn='t new -t'
alias td='t detach'

# terraform
alias tf='terraform'

# system
alias xx='xmodmap ~/.Xmodmap'
alias xc='setxkbmap -option'
