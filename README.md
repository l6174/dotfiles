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
- Use this at your own risk because it is configured according to my preferences.

# Contents
- Wallpaper: [Bridge](https://raw.githubusercontent.com/catppuccin/wallpapers/main/landscapes/Bridge.jpg)
- Fetch Tool: [Fetch It](https://github.com/Ruturajn/fetchit)
- New Tab Page: [Bento-Next](https://github.com/l6174/startpage)
- Visualizer: [Cava](https://github.com/karlstav/cava)
- Prompt: [Starship](https://starship.rs/)
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)
- Color Scheme: [Catppuccin](https://github.com/catppuccin/catppuccin)

# Installation
After a base arch installation execute these commands:
```
$ git clone https://github.com/l6174/dotfiles.git ~/dotfiles

$ cd dotfiles

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
