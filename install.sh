#!/bin/bash

NT_SCRIPT="nt"
INSTALL_DIR="/usr/local/bin"
BASHRC="${HOME}/.bashrc"
ZSHRC="${HOME}/.zshrc"
ALIASES="alias nta='nt -a'\nalias ntg='nt -g'\nalias ntr='nt -r'\nalias ntc='nt -c'"

# Ensure the nt script is executable
chmod +x "$NT_SCRIPT"

# Copy the nt script to the /usr/local/bin directory
sudo cp "$NT_SCRIPT" "$INSTALL_DIR"

# Function to add aliases to a shell configuration file
add_aliases() {
    local shell_rc="$1"
    if [ -f "$shell_rc" ]; then
        if ! grep -q "alias nta='nt -a'" "$shell_rc"; then
            echo -e "\n# nt aliases\n$ALIASES" >> "$shell_rc"
            echo "Aliases added to $shell_rc"
        else
            echo "Aliases already present in $shell_rc"
        fi
    else
        echo "$shell_rc not found"
    fi
}

# Add aliases to .bashrc and .zshrc if they exist
add_aliases "$BASHRC"
add_aliases "$ZSHRC"

echo "Installation complete. Please restart your terminal or source your shell configuration file to use the aliases."
