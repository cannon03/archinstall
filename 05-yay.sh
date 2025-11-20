#!/usr/bin/env bash
set -euo pipefail

echo ">>> Installing yay (AUR helper)..."

# Ensure dependencies
sudo pacman -S --needed --noconfirm base-devel git

# Build yay from AUR
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

echo ">>> yay installed successfully!"

echo ">>> Installing Zen Browser..."
yay -S --noconfirm zen-browser-bin

echo ">>> Zen Browser installed!"

echo ">>> Installing Bibata cursor theme..."
yay -S --noconfirm bibata-cursor-theme-bin


echo ">>> Bibata Cursor Theme installed!"

