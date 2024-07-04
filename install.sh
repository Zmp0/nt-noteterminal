#!/bin/bash

# Copy nt script to /usr/local/bin
sudo cp nt /usr/local/bin/nt

# Add aliases to .bashrc or .zshrc
if [ -f "$HOME/.bashrc" ]; then
    echo 'alias nta="nt -a"' >> "$HOME/.bashrc"
    echo 'alias ntg="nt -g"' >> "$HOME/.bashrc"
    echo 'alias ntr="nt -r"' >> "$HOME/.bashrc"
    echo 'alias ntrr="nt -rr"' >> "$HOME/.bashrc"
    echo 'alias ntc="nt -c"' >> "$HOME/.bashrc"
    echo 'alias ntf="nt -f"' >> "$HOME/.bashrc"
    source "$HOME/.bashrc"
    echo "Aliases added to .bashrc"
elif [ -f "$HOME/.zshrc" ]; then
    echo 'alias nta="nt -a"' >> "$HOME/.zshrc"
    echo 'alias ntg="nt -g"' >> "$HOME/.zshrc"
    echo 'alias ntr="nt -r"' >> "$HOME/.zshrc"
    echo 'alias ntrr="nt -rr"' >> "$HOME/.zshrc"
    echo 'alias ntc="nt -c"' >> "$HOME/.zshrc"
    echo 'alias ntf="nt -f"' >> "$HOME/.zshrc"
    source "$HOME/.zshrc"
    echo "Aliases added to .zshrc"
else
    echo "Unsupported shell or configuration: aliases not added."
fi

echo "nt installed successfully!"
