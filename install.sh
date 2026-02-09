#!/bin/bash

set -e

echo "=============================="
echo " Installing Arch Dotfiles "
echo "=============================="

DOTDIR="$(pwd)"

echo "[1/3] Create config directory..."
mkdir -p "$HOME/.config"

echo "[2/3] Copy .config files..."
if [ -d "$DOTDIR/.config" ]; then
    cp -r "$DOTDIR/.config/"* "$HOME/.config/"
fi

echo "[3/3] Copy shell configs..."
[ -f "$DOTDIR/.zshrc" ] && cp "$DOTDIR/.zshrc" "$HOME/"
[ -f "$DOTDIR/.bashrc" ] && cp "$DOTDIR/.bashrc" "$HOME/"

echo "=============================="
echo " Dotfiles installed SUCCESS "
echo "=============================="
