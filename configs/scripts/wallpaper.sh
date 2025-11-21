#!/bin/bash

WALLPAPER_DIR="$HOME/.config/hypr/wallpapers"

while true; do
    # Pick a random wallpaper
    WALL=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

    # Kill existing swaybg (required)
    pkill swaybg

    # Launch new wallpaper
    swaybg -i "$WALL" -m fill &

    # Wait 10 minutes
    sleep 30
done
