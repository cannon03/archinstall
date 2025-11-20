#!/usr/bin/env bash
set -euo pipefail

echo ">>> Updating system..."
sudo pacman -Syu --noconfirm

echo ">>> Installing minimal required packages..."

sudo pacman -S --noconfirm \
    hyprland \
    hyprpaper \
    hypridle \
    xdg-desktop-portal-hyprland \
    xwayland \
    wl-clipboard \
    ghostty \
    fuzzel \
    thunar \
    feh \
    pipewire \
    pipewire-pulse \
    wireplumber \
    ttf-jetbrains-mono-nerd \
    ly \
    waybar \
    git \
    base-devel \
    networkmanager \
    zram-generator
