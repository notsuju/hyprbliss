# Zenbook Duo Hyprland Rice
## Screenshots
<img width="1920" height="1595" alt="screenshot-20260520-222806" src="https://github.com/user-attachments/assets/12a0e4b6-d065-4f57-ac6b-4db8a1fbfb5e" />

<img width="1919" height="1082" alt="screenshot-20260520-223453" src="https://github.com/user-attachments/assets/adafe0bf-93ae-4214-b4fe-9f6759988c68" />

<img width="1919" height="1596" alt="screenshot-20260520-222044" src="https://github.com/user-attachments/assets/7d45a6e9-463c-4a78-b49c-a4bd6b309172" />

Font using : [Input Mono](https://input.djr.com/)

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
