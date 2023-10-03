fish_add_path --path $HOME/.local/bin
fish_add_path --path $HOME/bin
starship init fish | source
zoxide init --cmd cd fish | source
set -x BAT_THEME Catppuccin-macchiato
set -x EDITOR nano
if status is-interactive
    # Commands to run in interactive sessions can go here
    # neofetch --ascii radioactive.txt --ascii_colors 2 1
    # fetchit -f .l/laptop.txt -o yellow -t red -b blue
    nitch
end
if status --is-login
    startx    
    
end
fish_add_path /home/llawliet/.spicetify
