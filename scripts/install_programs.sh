#!/bin/bash

echo "Installing Core Setup..."
sudo pacman -Syu --noconfirm
sudo pacman -S hyprland waybar kitty fuzzel mako btop cava neovim yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick mpv --noconfirm
yay -S swappy-git waypaper uwufetch ani-cli zen-browser-bin --noconfirm
echo "Done!"

echo "Installing Developer Tools..."
sudo pacman -S gcc make gdb rustup dotnet-sdk texlive-meta --noconfirm
yay -S cursor-bin visual-studio-code-bin --noconfirm
echo "Done!"

echo "Installing Gaming & Remote..."
sudo pacman -S steam --noconfirm
yay -S parsec-bin --noconfirm
echo "Done!"

echo "Installing Utilities..."
sudo pacman -S thunar gvfs python-pywal grim slurp --noconfirm
echo "Done!"

echo "Installing Nvidia Utils..."
sudo pacman -S nvidia nvidia-utils --noconfirm
echo "Done!"

# --- Hardware Prompt ---
echo ""
read -p "Are you installing this on an ASUS laptop? (y/n): " asus_response

if [[ "$asus_response" =~ ^[Yy]$ ]]; then
    echo "Installing ASUS Hardware..."
    sudo pacman -S asusctl supergfxctl --noconfirm
    echo "ASUS drivers installed!"
else
    echo "Skipping ASUS hardware drivers to keep the system safe."
fi

echo ""
echo "Installation Complete!"
