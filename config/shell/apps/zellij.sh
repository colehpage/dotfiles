export ZELLIJ_RUNNER_ROOT_DIR="Dev"
export ZELLIJ_RUNNER_IGNORE_DIRS="node_modules,target"
export ZELLIJ_RUNNER_MAX_DIRS_DEPTH="3"
export ZELLIJ_RUNNER_LAYOUTS_DIR=".config/zellij/layouts"
export ZELLIJ_RUNNER_BANNERS_DIR=".config/zellij/banners"

alias t="zellij-runner"
alias z="zellij"
alias tls="zellij list-sessions"
alias ta="zellij attach "
alias tk="zellij kill-session "
alias tka="zellij kill-all-sessions"
alias tt="zellij --session generic --layout terminal"
