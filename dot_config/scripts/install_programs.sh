#!/bin/bash

set -e

echo "Updating system..."
sudo pacman -Syu --noconfirm

if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    sudo pacman -S --needed git base-devel --noconfirm
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si --noconfirm
    rm -rf /tmp/yay
    cd -
fi

echo "Installing Core Setup and Plugins..."
sudo pacman -S --needed hyprland waybar kitty fuzzel mako btop cava neovim yazi \
ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick mpv \
hypridle hyprlock awww nwg-displays nwg-look hyprcursor \
xdg-desktop-portal-hyprland xdg-desktop-portal-gtk \
pavucontrol blueman obs-studio bluez bluez-utils --noconfirm

# Enable Bluetooth service
sudo systemctl enable --now bluetooth

yay -S --needed swappy-git waypaper uwufetch ani-cli zen-browser-bin localsend-bin --noconfirm
echo "Core setup done!"

echo "Installing Developer Tools..."
sudo pacman -S --needed gcc make gdb cpio pkg-config cmake g++ rustup dotnet-sdk texlive-meta --noconfirm
yay -S --needed cursor-bin visual-studio-code-bin --noconfirm
echo "Developer tools done!"

echo "Installing Utilities..."
sudo pacman -S --needed thunar gvfs python-pywal grim slurp --noconfirm
echo "Utilities done!"

# --- Hardware Prompts ---
echo ""
read -p "Are you installing this on an ASUS laptop? (y/n): " asus_response
if [[ "$asus_response" =~ ^[Yy]$ ]]; then
    echo "Installing ASUS Hardware..."
    sudo pacman -S --needed asusctl supergfxctl --noconfirm
    sudo systemctl enable --now supergfxd
    echo "ASUS drivers installed and service enabled!"
else
    echo "Skipping ASUS hardware drivers."
fi

echo ""
read -p "Do you want to install NVIDIA drivers? (Type 'n' if testing in a VM!) (y/n): " nvidia_response
if [[ "$nvidia_response" =~ ^[Yy]$ ]]; then
    echo "Installing Nvidia Utils..."
    sudo pacman -S --needed nvidia nvidia-utils --noconfirm
    echo "Nvidia drivers installed!"
else
    echo "Skipping Nvidia drivers."
fi

echo "Configuring Default Shell..."
if command -v zsh &> /dev/null; then 
    sudo chsh -s $(which zsh) $USER
    echo "Default shell successfully set to Zsh!"
else
    echo "Zsh not found. Skipping shell change."
fi

echo "Installing Hypr Plugins..."
hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm add https://github.com/VirtCode/hypr-dynamic-cursors
hyprpm enable hyprexpo
hyprpm reload
echo "Plugins done!"

echo "Installing Gaming & Remote..."
sudo pacman -S --needed steam --noconfirm
yay -S --needed parsec-bin --noconfirm
echo "Done!"

echo ""
echo "======================================================="
echo " 🎉 INSTALLATION COMPLETE! 🎉"
echo "======================================================="
echo ""
echo "IMPORTANT NEXT STEPS:"
echo "1. Your default shell is now Zsh, but you MUST reboot or log out"
echo "   for the system to recognize the change."
echo "2. After rebooting, open Kitty and run:  cd ~/.config"
echo "   (This teaches zoxide its first directory so the 'z' command works)."
echo "3. If Pywal colors don't load immediately, run:  wal -i /path/to/wallpaper"
echo ""
echo "======================================================="
