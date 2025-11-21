#!/bin/bash
set -euo pipefail




source ./00-env.sh

echo ">>> Post-install starting..."
echo "User detected: $USER_NAME"




bash ./01-packages.sh
bash ./02-hyprland-config.sh
bash ./03-waybar-config.sh
bash ./04-services.sh
bash ./05-yay.sh
bash ./06-scripts.sh






echo ">>> Post-install completed successfully!"
