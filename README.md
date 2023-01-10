<div align="center">
    <h1>✨L's dot files✨</h1>
    <h3></h3>
</div>

# Gallery
![](https://github.com/l6174/dotfiles/blob/main/Pictures/Screenshots/sc_main.png)
![](https://github.com/l6174/dotfiles/blob/main/Pictures/Screenshots/sc_browser.png)
![](https://github.com/l6174/dotfiles/blob/main/Pictures/Screenshots/sc_spotify.png)

# Notes
- This setup is based on [Axarva's Dotfiles](https://github.com/axarva/dotfiles-2.0).
- It is not suitable for resolutions other then 1366x768.
- Please go through the [install script](install.sh) once and change stuff which you don't need.

# Contents
- Wallpaper: [Bridge](https://raw.githubusercontent.com/catppuccin/wallpapers/main/landscapes/Bridge.jpg)
- Fetch Tool: [Fetch It](https://github.com/Ruturajn/fetchit)
- New Tab Page: [Bento-Next](https://github.com/l6174/startpage)
- Visualizer: [Cava](https://github.com/karlstav/cava)
- Prompt: [Starship](https://starship.rs/)
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)
- Color Scheme: [Catppuccin](https://github.com/catppuccin/catppuccin)

# Required Dependencies
These dependencies are included in the install script (for arch only). You can are free to remove packages which you don't need from install script as long as it doesn't appear in this dependency list.
- ACPI (For battery related stuff.)
- wmctrl (IDK about this lol.)
- playerctl (For player widget to work.)
- xclip and maim (For screenshot stuff.)
- rofi (Appmenu)
- jq (IDK about this too lol.)
- xautolock (For automatic locking and inhibitor.)
- betterlockscreen (Lockscreen)
- fish {Optional} (Add `startx` in .bash_profile or .zsh_profile if you use any of these.)
- alsa-utils (Needed for audio slider to work.)
- zoxide (Modern replacement for cd)
- exa (Modern replacement for ls.)
- bat (Modern replacement for cat.)
- Papirus Icon Theme (For tint2 dock.)
- kitty (Main Terminal. You can change it with alacritty if you want.)
- nitrogen (Wallpapers)
- fetchit (Fetch Tool in screenshots. You can change it with neofetch or any other fetch tool.)
- feh (Image Viewer)
- xorg (Display Server)
- light (Brightness slider)
- starship (The main prompt.)

# Installation
After a base arch installation execute these commands:
```
$ git clone https://github.com/l6174/dotfiles.git ~/dotfiles

$ cd ~/dotfiles

$ sh install.sh
```

# Keybinds
These are the basic keybinds. Read through the `.xmonad/xmonad.hs` file for more keybinds like increasing gaps and restoring gaps.

|        Keybind         |                 Function                 |
| ---------------------- | ---------------------------------------- |
| `Meta + Shift + Enter` | Launch terminal (kitty)                  |
| `Meta + Shift + C`     | Close Window                             |
| `Meta + O`             | Open rofi menu                           |
| `Meta + Shift + Q`     | Open rofi powermenu                      |
| `Meta + S`             | Toggle sidebar                           |
| `Meta + P`             | Toggle dashboard                         |
| `Meta + B`             | Toggle the main bars                     |
| `Meta + Z`             | Toggle inhibitor (Toggles autolocking)   |
| `Meta + Ctrl + G`      | Toggle gaps (toggle to get screen space) |
| `Meta + J`             | Navigate through Windows                 |
| `Meta + K`             | Navigate through Windows                 |
| `Meta + Space`         | Switch through layouts                   |
| `Meta + T`             | Make a floating Window tiled             |
