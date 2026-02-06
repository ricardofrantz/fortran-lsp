#!/bin/bash

# Check if fortls is installed and available in PATH

if command -v fortls &> /dev/null; then
    exit 0
fi

# Try installing via uv tool (preferred, isolated environment)
if command -v uv &> /dev/null; then
    echo "[fortls] Installing via uv tool..."
    if uv tool install fortls 2>/dev/null; then
        echo "[fortls] Installed successfully via uv"
        exit 0
    fi
fi

# Fallback: install via pip
if command -v pip3 &> /dev/null || command -v pip &> /dev/null; then
    PIP_CMD=$(command -v pip3 2>/dev/null || command -v pip)
    echo "[fortls] Installing via pip..."
    if $PIP_CMD install --user fortls 2>/dev/null; then
        echo "[fortls] Installed successfully via pip"
        exit 0
    fi
fi

echo "[fortls] Automatic installation failed. Please install manually:"
echo "        uv tool install fortls"
echo "        pip install fortls"

exit 0
