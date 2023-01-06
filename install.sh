# Initialization
echo "Starting dotfiles installation. Sit back and relax. :P"
sleep 3


# Copy content to it's place
echo "Copying files to their place..."
cp -r ./* ~
cd ~


# Install Paru
echo "Installing Paru..."
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~


# Update
echo "System Update..."
sudo pacman --noconfirm -Syu


# Change 'xf86-video-intel' accordingly
# Remove the things which are bloat to you like chromium, zathura, etc.
echo "Installing Packages..."
sudo pacman -S --noconfirm --needed base-devel wget git xf86-video-intel rofi feh xorg xorg-xinit xorg-xinput xmonad fish alsa-utils cava lxappearance qt5ct polkit thunar zoxide exa zathura chromium papirus-icon-theme kitty nitrogen


# AUR Dependencies
echo "Installing More Packages..."
paru -S picom-jonaburg-git\
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
        lightly-qt


# Quick Fix for tint2
echo "Applying a quick fix for tint2.."
if ! [ -f /usr/lib/libasan.so.6 ]; then
    sudo ln -s /usr/lib/libasan.so.8 /usr/lib/libasan.so.6 
fi


# Change TTY Theme
echo "Changing TTY Theme..."
~/TTY/build.sh
~/TTY/install.sh macchiato


# Add Cursors
echo "Installing Cursors..."
sudo cp -r ~/.local/share/icons/Catppuccin-Macchiato-Green-Cursors /usr/share/icons/


# Add GTK Theme
echo "Installing GTK Theme..."
sudo cp -r ~/.themes/Catppuccin-Macchiato-Standard-Green-Dark /usr/share/themes/


# Set Wallpaper
nitrogen --set-auto ~/Wallpapers/Bridge.jpg
# Change Shell
echo "Changing Shell..."
chsh -s /usr/bin/fish


echo "Installation Complete! Rebooting in 5 seconds..."
sleep 5
reboot
