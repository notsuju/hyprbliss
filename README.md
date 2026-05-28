<div align="center">

# 🌸 hyprbliss

_a rice that's beautiful and productive<3_

</div>

---

<img width="1920" height="50" alt="screenshot-20260528-152425" src="https://github.com/user-attachments/assets/0172ed6f-f908-43b0-b005-83afd0622969" />

---
## Screenshots
<img width="1920" height="1083" alt="screenshot-20260528-100256" src="https://github.com/user-attachments/assets/769845de-df28-42f8-8b30-d1691ea0d583" />

<img width="1920" height="1593" alt="screenshot-20260528-094134" src="https://github.com/user-attachments/assets/cdc3cebd-6e51-48bf-a30b-fd52e00099bc" />

<img width="1919" height="1080" alt="screenshot-20260528-154009" src="https://github.com/user-attachments/assets/f2b842c5-a258-4bb5-9f24-e9b736de998a" />

---

hyprbliss is my personal rice for my zenbook duo, it's simple, looks good and works fast for my workflow.

|                 |                                                       |
| --------------- | ----------------------------------------------------- |
| **os**          | Arch Linux                                            |
| **wm**          | [Hyprland](https://hypr.land/)                        |
| **launcher**    | [rofi](https://github.com/davatorium/rofi)            |
| **terminal**    | [kitty](https://sw.kovidgoyal.net/kitty/)             |
| **shell**       | zsh                                                   |
| **editor**      | [neovim](https://neovim.io/)                          |
| **font**        | [Input Mono](https://input.djr.com/)                  |

---

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
