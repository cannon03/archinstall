# Arch Linux Post-Install Script

A modular Arch Linux post-installation script that sets up a complete **Hyprland-based Wayland desktop environment** with minimal configuration required.

## 🎯 Overview

This project automates the setup of a modern, functional Arch Linux desktop featuring:
- **Hyprland** tiling window manager (Wayland)
- **Waybar** status bar with workspace and system monitoring
- **Ghostty** terminal emulator
- **Fuzzel** application launcher
- **Dynamic wallpaper rotation** (25+ included themes)
- **ZRAM compression** for improved memory management
- **AUR support** via yay

## 📁 Project Structure

```
archinstall/
├── install.sh              # Main entry point script
├── 00-env.sh               # Environment configuration
├── 01-packages.sh          # Core package installation
├── 02-hyprland-config.sh   # Hyprland WM setup
├── 03-waybar-config.sh     # Waybar configuration
├── 04-services.sh          # System services configuration
├── 05-yay.sh               # AUR helper and additional packages
├── 06-scripts.sh           # Custom scripts installation
└── configs/                # Configuration files directory
    ├── hypr/               # Hyprland configurations
    │   ├── hyprland.conf   # Main WM config
    │   ├── keybinds.conf   # Keyboard shortcuts
    │   ├── monitors.conf   # Display setup
    │   ├── autostart.conf  # Startup applications
    │   └── wallpapers/     # 25+ wallpaper images
    ├── scripts/            # Custom utility scripts
    │   └── wallpaper.sh    # Dynamic wallpaper rotation
    ├── systemd/            # Systemd service configs
    │   └── zram-generator.conf
    └── waybar/             # Waybar configurations
        ├── config          # Module configuration
        └── style.css       # Styling
```

## 🚀 Installation

### Prerequisites
- Arch Linux base installation
- Internet connection
- Sudo privileges

### Quick Start
```bash
# Clone or download the project
cd /path/to/archinstall

# Make the main script executable
chmod +x install.sh

# Run the installation
./install.sh
```

### What Gets Installed

**Core Desktop Environment:**
- Hyprland (tiling window manager)
- Waybar (status bar)
- Ghostty (terminal emulator)
- Fuzzel (application launcher)
- Thunar (file manager)
- Ly (display manager)
- Zen Browser

**System Components:**
- PipeWire (audio server) with WirePlumber
- NetworkManager (network management)
- ZRAM compression
- Bibata Modern Ice cursor theme
- JetBrains Mono Nerd Font
- Noto font family (including CJK and emoji)

## ⚙️ Configuration

### Key Features

**Dynamic Wallpapers:**
- 25+ pre-included wallpaper themes
- Automatic rotation every 10 minutes
- Themes include: Dracula, Nord, Gruvbox, Cyberpunk, Forest, Ocean, and more

**Keybindings (SUPER = Windows/Mod key):**
- `SUPER + Enter` - Launch Ghostty terminal
- `SUPER + Space` - Launch Fuzzel app launcher
- `SUPER + Q` - Close active window
- `SUPER + Arrow Keys` - Window navigation
- `SUPER + Shift + Arrow` - Move windows
- `SUPER + 1-0` - Switch workspaces
- `SUPER + B` - Launch Zen Browser

**Performance Optimizations:**
- ZRAM compression (min(ram/2, 4GB) with zstd)
- Hardware cursor acceleration
- Minimal resource usage configuration
- Efficient tiling layout

### Customization

**Monitor Setup:**
The script includes auto-detection configuration that works with most hardware and VMs. For manual configuration, edit:
- `configs/hypr/monitors.conf`

**Wallpaper Collection:**
- Location: `configs/hypr/wallpapers/`
- Add new wallpapers by placing images in this directory
- Wallpaper rotation script: `configs/scripts/wallpaper.sh`

**Waybar Modules:**
- Workspace switcher
- Network connectivity
- Battery status
- Date and time
- Customizable styling in `configs/waybar/`

## 🔧 Scripts Breakdown

### Execution Order
1. **`install.sh`** - Main orchestrator script
2. **`00-env.sh`** - Sets up environment variables
3. **`01-packages.sh`** - Installs core packages via pacman
4. **`02-hyprland-config.sh`** - Sets up Hyprland configuration
5. **`03-waybar-config.sh`** - Configures Waybar status bar
6. **`04-services.sh`** - Enables system services
7. **`05-yay.sh`** - Installs AUR helper and additional packages
8. **`06-scripts.sh`** - Copies custom scripts to user directory

### Error Handling
- All scripts use `set -euo pipefail` for robust error handling
- Installation will stop immediately if any step fails
- Clear progress messages throughout the process

## 📦 Included Software

### Official Repository Packages
- **Desktop:** hyprland, waybar, ghostty, fuzzel, thunar, ly
- **Audio:** pipewire, wireplumber
- **Network:** networkmanager
- **Fonts:** noto-fonts, noto-fonts-cjk, noto-fonts-emoji, jetbrains-mono-nerd
- **Utilities:** wl-clipboard, swaybg, feh, git, base-devel

### AUR Packages
- **Browser:** zen-browser
- **Cursor:** bibata-cursor-theme
- **Additional:** zen-browser-bin (via yay)

## 🎨 Visual Features

- **Semi-transparent Waybar** with rounded corners
- **Consistent color scheme** across all applications
- **Modern cursor theme** (Bibata Modern Ice)
- **Typography consistency** with JetBrains Mono Nerd Font
- **25+ wallpaper themes** covering various aesthetics

## 🔒 Security Notes

This post-installation script:
- Uses only official Arch repositories and trusted AUR packages
- Requires sudo privileges for system-wide installations
- Follows Arch Linux best practices
- Does not modify critical system files beyond standard configuration

## 🐛 Troubleshooting

**Common Issues:**
1. **Display Manager Issues:** Ensure Ly is enabled and properly configured
2. **Wayland Problems:** Verify GPU drivers are installed
3. **Audio Issues:** Check PipeWire service status
4. **ZRAM Not Working:** Verify kernel module is loaded

**Service Status Check:**
```bash
# Check enabled services
systemctl status NetworkManager
systemctl status pipewire
systemctl status ly
```

## 🤝 Contributing

To modify or extend this setup:
1. Edit individual scripts in the numbered sequence
2. Add custom configurations to the `configs/` directory
3. Modify package lists in `01-packages.sh` and `05-yay.sh`
4. Update keybindings in `configs/hypr/keybinds.conf`

## 📄 License

This project follows standard open-source practices. Feel free to modify and redistribute according to your needs.

---

**Result:** A complete, modern Arch Linux desktop experience with Hyprland, focusing on minimalism, performance, and aesthetics. Perfect for users who want a functional tiling window manager setup without extensive manual configuration.