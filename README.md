# Zenbook Duo Hyprland Rice
## Screenshots
<img width="1916" height="1595" alt="swappy-20260401-232855" src="https://github.com/user-attachments/assets/8ecea0a6-b9f7-4165-9cc5-938d4f25e9db" />

<img width="1920" height="1595" alt="swappy-20260401-235248" src="https://github.com/user-attachments/assets/df89854b-c6e9-47fe-8732-41d75fe2bba8" />

<img width="1920" height="1080" alt="swappy-20260401-231957" src="https://github.com/user-attachments/assets/9f30e50b-d0f8-46d6-b77b-9f8a4ff9899b" />

<img width="1920" height="1081" alt="swappy-20260401-231900" src="https://github.com/user-attachments/assets/938c12b6-0990-4ca5-a5d2-e34165d78232" />

# STEPS TO INSTALL
Install the Prerequisites:

``` sudo pacman -S git --noconfirm ```

``` sudo pacman -S chezmoi --noconfirm ```

Download the Vault:

``` chezmoi init https://github.com/notsuju/hyprland_dotfiles.git ```

Run the Auto-Installer for main Programs:

``` ~/.local/share/chezmoi/scripts/install_programs.sh ```

Apply the Dotfiles:

``` chezmoi apply ```

Fix Permissions:

``` chmod -R u+rw ~/.config ```
