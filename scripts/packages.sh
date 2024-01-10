#!/bin/bash

# Declare global arrays
declare -a taps
declare -a packages
declare -a casks
declare -a vscode_extensions

install_packages() {
    # Path to the Brewfile
    brewfile_path="../Brewfile"

    # Call the function
    process_brewfile "$brewfile_path"

	info "Configuring taps"
	apply_brew_taps "${taps[@]}"

	info "Installing packages..."
	install_brew_formulas "${packages[@]}"

    info "Installing casks..."
    install_brew_casks "${casks[@]}"

    info "Installing vscode extensions..."
    install_vscode_extensions "${vscode_extensions[@]}"

	info "Cleaning up brew packages..."
	brew cleanup
}

post_install_packages() {
	info "Installing fzf bindings"
	# shellcheck disable=SC2046
	$(brew --prefix)/opt/fzf/install
}

# Function to process Brewfile
process_brewfile() {
    local brewfile_path=$1

    # Read each line in the Brewfile
    while IFS= read -r line; do
        if [[ "$line" =~ ^tap ]]; then
            # Extract the tap name
            local tap_name=$(echo "$line" | cut -d ' ' -f 2)
            taps+=("$tap_name")
        elif [[ "$line" =~ ^brew ]]; then
            # Extract the package name
            local package_name=$(echo "$line" | cut -d ' ' -f 2)
            packages+=("$package_name")
        elif [[ "$line" =~ ^cask ]]; then
            # Extract the cask name
            local cask_name=$(echo "$line" | cut -d ' ' -f 2 | tr -d '"')
            casks+=("$cask_name")
        elif [[ "$line" =~ ^vscode ]]; then
            # Extract the vscode extension name
            local extension_name=$(echo "$line" | cut -d ' ' -f 2 | tr -d '"')
            vscode_extensions+=("$extension_name")
        fi
    done < "$brewfile_path"
}