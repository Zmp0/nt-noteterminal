#!/bin/bash

# Remove nt script from /usr/local/bin
sudo rm -f /usr/local/bin/nt

# Remove aliases from .bashrc
if [ -f "$HOME/.bashrc" ]; then
    sed -i '/^alias nta/d' "$HOME/.bashrc"
    sed -i '/^alias ntg/d' "$HOME/.bashrc"
    sed -i '/^alias ntr/d' "$HOME/.bashrc"
    sed -i '/^alias ntrr/d' "$HOME/.bashrc"
    sed -i '/^alias ntc/d' "$HOME/.bashrc"
    sed -i '/^alias ntf/d' "$HOME/.bashrc"
    source "$HOME/.bashrc"
    echo "Aliases removed from .bashrc"
fi

# Remove aliases from .zshrc
if [ -f "$HOME/.zshrc" ]; then
    sed -i '/^alias nta/d' "$HOME/.zshrc"
    sed -i '/^alias ntg/d' "$HOME/.zshrc"
    sed -i '/^alias ntr/d' "$HOME/.zshrc"
    sed -i '/^alias ntrr/d' "$HOME/.zshrc"
    sed -i '/^alias ntc/d' "$HOME/.zshrc"
    sed -i '/^alias ntf/d' "$HOME/.zshrc"
    source "$HOME/.zshrc"
    echo "Aliases removed from .zshrc"
fi

echo "nt uninstalled successfully!"

