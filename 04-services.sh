#!/usr/bin/env bash
set -euo pipefail

source ./00-env.sh

echo ">>> Enabling system services..."


sudo cp -r ./configs/systemd/.  /etc/systemd/

sudo systemctl daemon-reload

# Internet
sudo systemctl enable NetworkManager

# Display manager
sudo systemctl enable ly

# zram swap
sudo systemctl start  systemd-zram-setup@zram0

echo ">>> Services enabled."
