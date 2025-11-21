#!/usr/bin/env bash
set -euo pipefail

echo ">>> Enabling system services..."


cp -r ./config/systemd/ /etc/systemd/

systemctl daemon-reload

# Internet
sudo systemctl enable NetworkManager

# Display manager
sudo systemctl enable ly

# zram swap
sudo systemctl enable systemd-zram-setup@zram0
sudo systemctl start  systemd-zram-setup@zram0

echo ">>> Services enabled."
