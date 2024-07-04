#!/bin/bash

NT_SCRIPT="/usr/local/bin/nt"
BASHRC="${HOME}/.bashrc"
ZSHRC="${HOME}/.zshrc"
ALIASES="alias nta='nt -a'\nalias ntg='nt -g'\nalias ntr='nt -r'"

# Function to remove aliases from a shell configuration file
remove_aliases() {
    local shell_rc="$1"
    if [ -f "$shell_rc" ]; then
        sed -i "/alias nta='nt -a'/d" "$shell_rc"
        sed -i "/alias ntg='nt -g'/d" "$shell_rc"
        sed -i "/alias ntr='nt -r'/d" "$shell_rc"
        echo "Aliases removed from $shell_rc"
    else
        echo "$shell_rc not found"
    fi
}

# Remove the nt script from /usr/local/bin
if [ -f "$NT_SCRIPT" ]; then
    sudo rm "$NT_SCRIPT"
    echo "Removed $NT_SCRIPT"
else
    echo "$NT_SCRIPT not found"
fi

# Remove aliases from .bashrc and .zshrc if they exist
remove_aliases "$BASHRC"
remove_aliases "$ZSHRC"

echo "Uninstallation complete. Please restart your terminal or source your shell configuration file to apply changes."
