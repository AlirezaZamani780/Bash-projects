#!/bin/bash

echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "Cleaning up unnecessary files..."
sudo apt autoremove -y && sudo apt autoclean -y

echo "System updated successfully!"
