apps=()

mas_apps=()

install_macos_apps() {
	info "Installing macOS apps..."
	install_brew_casks "${apps[@]}"
}

install_masApps() {
	info "Installing App Store apps..."
	for app in "${mas_apps[@]}"; do
		mas install "$app"
	done
}
