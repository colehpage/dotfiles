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
       mas install "$@"
    else
       echo "'$@' is already installed, you're set."
       sleep 1
    fi
}

### CAN'T INSTALL WITHOUT LOGIN WHICH ISN'T WORKING ATM ###
# Over time, Apple has changed the APIs used by mas to manage App Store apps, limiting its capabilities. Please sign in or purchase apps using the App Store app instead. Subsequent redownloads can be performed with mas install.

# ⛔️ The signin command is not supported as of macOS 10.13 High Sierra. #164
# ⛔️ The purchase command is not supported as of macOS 10.15 Catalina. #289
# ⛔️ The account command is not supported as of macOS 12 Monterey. #417

echo "Installing app store packages..."

step "Installing amphetamine if not already installed"
install 937984704

step "Installing apps/hand mirror if not already installed"
install 1502839586

step "Installing apps/bear if not already installed"
install 1091189122

exit 0
