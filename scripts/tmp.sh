stow_dotfiles() {
	local files=(
		".config/starship.toml"
		".config/icons.sh"
		".config/colors.sh"
		".zshrc"
	)
	local folders=(
        ".config/alacritty"
        ".config/borders"
        ".config/btop"
        ".config/cava"
        ".config/gh"
        ".config/karabiner"
        ".config/linearmouse"
        ".config/lsd"
        ".config/neofetch"
        ".config/nushell"
        ".config/nnn"
        ".config/nvim"
        ".config/ranger"
        ".config/sketchybar"
        ".config/skhd"
		".config/tmux"
		".config/yabai"
		".config/zellij"
		".gnupg"
		".ssh"
	)
	# info "Removing existing config files"
	for f in "${files[@]}"; do
		rm -f "$HOME/$f" || true
	done

	# Create the folders to avoid symlinking folders
	for d in "${folders[@]}"; do
		rm -rf "${HOME:?}/$d" || true
		mkdir -p "$HOME/$d"
	done

	# shellcheck disable=SC2155
	local to_stow="$(find config -maxdepth 1 -type d -mindepth 1 | awk -F "/" '{print $NF}' ORS=' ')"
	echo "Stowing: $to_stow"
	stow -d config --verbose 1 --target "$HOME" $to_stow
}

stow_dotfiles