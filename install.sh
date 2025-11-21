#!/bin/bash

# Code Cleaner Installation Script
# Works on Mac and Linux

set -e

echo "🧹 Code Cleaner - Installation"
echo "=============================="
echo ""

# Check if running on supported OS
if [[ "$OSTYPE" == "linux-gnu"* ]] || [[ "$OSTYPE" == "darwin"* ]]; then
    echo "✓ OS detected: $OSTYPE"
else
    echo "⚠ Unsupported OS. This script works on Mac and Linux."
    echo "For Windows, see README.md for manual installation."
    exit 1
fi

# Check Python version
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version | cut -d' ' -f2 | cut -d'.' -f1,2)
    echo "✓ Python 3 detected: $PYTHON_VERSION"
else
    echo "❌ Python 3 not found. Please install Python 3.7 or higher."
    exit 1
fi

# Rename the script file to 'clean' if it's still named 'code-cleaner.py'
if [ -f "code-cleaner.py" ]; then
    mv code-cleaner.py clean
    echo "✓ Renamed script to 'clean'"
fi

# Make sure the script exists
if [ ! -f "clean" ]; then
    echo "❌ 'clean' script not found in current directory"
    exit 1
fi

# Make it executable
chmod +x clean
echo "✓ Made script executable"

# Copy to /usr/local/bin (requires sudo)
echo ""
echo "Installing to /usr/local/bin (requires sudo)..."
sudo cp clean /usr/local/bin/clean
sudo chmod +x /usr/local/bin/clean
echo "✓ Installed to /usr/local/bin/clean"

# Check if pip is available
if command -v pip3 &> /dev/null; then
    echo ""
    echo "📦 Installing optional formatters for better results..."
    pip3 install black autopep8 --quiet --user 2>/dev/null || {
        echo "⚠ Could not install formatters (basic formatting will still work)"
    }
    echo "✓ Formatters installed"
else
    echo "⚠ pip3 not found. Formatters not installed (basic formatting will still work)"
fi

# Test installation
echo ""
echo "🧪 Testing installation..."
if command -v clean &> /dev/null; then
    echo "✓ Installation successful!"
else
    echo "⚠ 'clean' command not found in PATH"
    echo "You may need to restart your terminal or run: source ~/.bashrc"
fi

echo ""
echo "=============================="
echo "✅ Installation Complete!"
echo "=============================="
echo ""
echo "Try these commands:"
echo "  clean --help          Show all commands"
echo "  clean                 Interactive mode"
echo "  clean .               Clean current folder"
echo ""
echo "Documentation: https://github.com/atharva-badgujar/code-cleaner"
echo ""
