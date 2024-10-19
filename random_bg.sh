#!/bin/bash

# Directory containing the background images
DIR="/bg/file/dir"

# Select a random image from the directory
PIC=$(find "$DIR" -type f \( -iname '*.jpg' -o -iname '*.png' \) | shuf -n 1)

# Set the selected image as the background
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$PIC"
