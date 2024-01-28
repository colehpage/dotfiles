install_python_packages() {
	local pip_packages=(
		black
		xkcdpass
	)

	for p in "${pip_packages[@]}"; do
		if pip3 show "$p" >/dev/null; then
			warn "Package $p is already installed"
		else
			info "Installing package < $p >"
			pip3 install "$p"
		fi
	done
}

install_go_tools() {
	declare -A tools=(
		[delve]="github.com/go-delve/delve/cmd/dlv@latest"
        [go-outline]="github.com/ramya-rao-a/go-outline@latest"
        [gocode]="github.com/stamblerre/gocode@latest"
        [godef]="github.com/rogpeppe/godef@latest"
        [godoc]="golang.org/x/tools/cmd/godoc@latest"
        [gogetdoc]="github.com/zmb3/gogetdoc@latest"
        [goimports]="golang.org/x/tools/cmd/goimports@latest"
        [golangci-lint]="github.com/golangci/golangci-lint/cmd/golangci-lint@latest"
        [golint]="golang.org/x/lint/golint@latest"
        [gomodifytags]="github.com/fatih/gomodifytags@latest"
        [gopkgs]="github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest"
        [goplay]="github.com/haya14busa/goplay@latest"
        [gopls]="golang.org/x/tools/cmd/gopls@latest"
        [gorename]="golang.org/x/tools/cmd/gorename@latest"
        [goreturns]="github.com/sqs/goreturns@latest"
        [gotags]="github.com/jstemmer/gotags@latest"
        [gotests]="github.com/cweill/gotests/@latest"
        [guru]="golang.org/x/tools/cmd/guru@latest"
        [impl]="github.com/josharian/impl@latest"
        [pathos]="github.com/chip/pathos@latest"
		[shfmt]="mvdan.cc/sh/v3/cmd/shfmt@latest"
        [staticcheck]="honnef.co/go/tools/cmd/staticcheck@latest"
        [trainer]="github.com/rusinikita/trainer@latest"
	)

	for tool in "!${tools[@]}"; do
		if ! command -v "$tool" &>/dev/null; then
			info "Installing go tool < $tool >"
			go install "${tools[$tool]}"
		else
			warn "$tool is already installed"
		fi
	done
}

install_rust_tools() {
	source "$HOME/.cargo/env"

	if ! command -v rust-analyzer &>/dev/null; then
		info "Installing rust-analyzer"
		brew install rust-analyzer
	fi

    if ! cargo generate --version &>/dev/null; then
		info "Installing cargo-generate"
		brew install cargo-generate
	fi

	if ! cargo audit --version &>/dev/null; then
		info "Installing cargo-audit"
		cargo install cargo-audit --features=fix
	fi

    if ! cargo flamegraph --version &>/dev/null; then
		info "Installing cargo-flamegraph"
		cargo install cargo-flamegraph --features=fix
	fi

	if ! cargo edit --version &>/dev/null; then
		info "Installing cargo-edit"
		cargo install cargo-edit
	fi

	if ! cargo nextest --version &>/dev/null; then
		info "Installing cargo-nextest"
		cargo install cargo-nextest
	fi

	if ! cargo fmt --version &>/dev/null; then
		info "Installing rustfmt"
		rustup component add rustfmt
	fi

	if ! cargo clippy --version &>/dev/null; then
		info "Installing clippy"
		rustup component add clippy
	fi
}
