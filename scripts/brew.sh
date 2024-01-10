apply_brew_taps() {
	local tap_packages=$*
	for tap in $tap_packages; do
		if brew tap | grep "$tap" >/dev/null; then
			warn "Tap $tap is already applied"
		else
			brew tap "$tap"
		fi
	done
}

install_brew_formulas() {
	local formulas=$*
	for formula in $formulas; do
		if brew list --formula | grep "$formula" >/dev/null; then
			warn "Formula $formula is already installed"
		else
			info "Installing package < $formula >"
			brew install "$formula"
		fi
	done
}

install_brew_casks() {
	local casks=$*
	for cask in $casks; do
		if brew list --casks | grep "$cask" >/dev/null; then
			warn "Cask $cask is already installed"
		else
			info "Installing cask < $cask >"
			brew install --cask "$cask"
		fi
	done
}

install_vscode_extensions() {
	local vscode_extensions=$*
	for extension in $vscode_extensions; do
		if $HOMEBREW_PREFIX/bin/code --list-extensions | grep "$extension" >/dev/null; then
			warn "vscode extension $extension is already installed"
		else
			info "Installing vscode  < $extension >"
			$HOMEBREW_PREFIX/bin/code --install-extension "$cask"
		fi
	done
}
