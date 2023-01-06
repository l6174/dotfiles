# Initialization
echo "Starting dotfiles installation. Sit back and relax. :P"
sleep 3


# Copy content to it's place
echo "Copying files to their place..."
cp -r ./* ~
cd ~
echo "Done!"
sleep 3


# Install Paru
echo "Installing Paru..."
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~
echo "Done!"
sleep 3


# Update
echo "System Update..."
sudo pacman --noconfirm -Syu
echo "Done!"
sleep 3


# Change 'xf86-video-intel' accordingly
echo "Installing Packages..."
sudo pacman -S --no-confirm --needed base-devel wget git xf86-video-intel rofi feh xorg xorg-xinit xorg-xinput xmonad
echo "Done!"
sleep 3


# Extra Packages
echo "Installing More Packages..."
paru -S --needed picom-jonaburg-git\
	acpi              \
	wmctrl            \
	playerctl         \
	dunst             \
	xmonad-contrib    \
	jq                \
	xclip             \
	maim              \
	rofi-greenclip    \
	xautolock         \
	betterlockscreen  \
        lightly-qt        \
        fish              \
        alsa-utils        \
        cava              \
        lxappearance      \
        qt5ct             \
        polkit            \
        thunar            \
        zoxide            \
        exa               \
        zathura           \
        chromium          \
        papirus-icon-theme\
        kitty             \
        nitrogen
echo "Done!"
sleep 3


# Quick Fix for tint2
echo "Applying a quick fix for tint2.."
if ! [ -f /usr/lib/libasan.so.6 ]; then
    sudo ln -s /usr/lib/libasan.so.8 /usr/lib/libasan.so.6 
fi
echo "Done!"
sleep 3


# Change TTY Theme
echo "Changing TTY Theme..."
~/TTY/build.sh
~/TTY/install.sh macchiato
echo "Done!"
sleep 3


# Add Cursors
echo "Installing Cursors..."
sudo cp -r ~/.local/share/icons/Catppuccin-Macchiato-Green-Cursors /usr/share/icons/
echo "Done!"
sleep 3


# Add GTK Theme
echo "Installing GTK Theme..."
sudo cp -r ~/.themes/Catppuccin-Macchiato-Standard-Green-Dark /usr/share/themes/
echo "Done!"
sleep 3


# Set Wallpaper
echo "Setting Wallpaper..."
nitrogen --set-auto ~/Wallpapers/Bridge.jpg
echo "Done!"
sleep 3

# Set Lockscreen Wallpaper
echo "Setting Lockscreen Wallpaper..."
betterlockscreen -u ~/Wallpapers/cat_Japanese_Neon.png --fx blur
echo "Done!"
sleep 3


# Change Shell
echo "Changing Shell..."
chsh -s /usr/bin/fish
echo "Done!"
sleep 3


# Finalizing
echo "Installation Complete! Rebooting in 5 seconds..."
sleep 5
reboot
