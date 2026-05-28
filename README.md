# Zenbook Duo Hyprland Rice
## Screenshots
<img width="1920" height="1083" alt="screenshot-20260528-100256" src="https://github.com/user-attachments/assets/769845de-df28-42f8-8b30-d1691ea0d583" />

<img width="1920" height="1593" alt="screenshot-20260528-094134" src="https://github.com/user-attachments/assets/cdc3cebd-6e51-48bf-a30b-fd52e00099bc" />

<img width="1920" height="1596" alt="screenshot-20260528-094829" src="https://github.com/user-attachments/assets/f5f429ff-2e6a-4014-aff9-d662a04adec2" />

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
