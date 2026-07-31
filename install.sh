#!/bin/zsh

echo "This script will install the Keg package manager."

# Check for root/sudo access
if [[ $EUID -ne 0 ]]; then
    exec sudo "$0" "$@"
fi

# Get the real user's home directory (not root's)
if [[ -n "$SUDO_USER" ]]; then
    REAL_HOME=$(eval echo ~"$SUDO_USER")
else
    REAL_HOME="$HOME"
fi

# Create necessary directories
mkdir -p "$REAL_HOME/.keg/bin"
mkdir -p "$REAL_HOME/.keg/data"
mkdir -p "$REAL_HOME/.keg/installed"

# Copy auro script to bin directory
cp "$(dirname "$0")/keg" "$REAL_HOME/.keg/bin/keg"

# Make auro executable
chmod +x "$REAL_HOME/.keg/bin/auro"

# Add auro to user's PATH if not already present
if ! grep -q '.keg/bin' "$REAL_HOME/.zshrc" 2>/dev/null; then
    echo 'export PATH="$HOME/.keg/bin:$PATH"' >> "$REAL_HOME/.zshrc"
fi

echo "Keg has been installed successfully!"
echo "Run 'source ~/.zshrc' or restart your terminal to use auro."
