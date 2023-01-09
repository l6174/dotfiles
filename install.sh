# Initialization
echo "Starting dotfiles installation. Sit back and relax. :P"
sleep 3


# Install Paru
echo "Installing Paru..."
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~
echo "Done!"
sleep 3


# Install dunst fork
echo "Installing Dunst..."
git clone https://github.com/k-vernooy/dunst.git --branch progress-styling ~/dunst
cd ~/dunst
make && sudo make install
echo "Done!"
cd ~
sleep 3


# Update
echo "System Update..."
sudo pacman --noconfirm -Syu
echo "Done!"
sleep 3


# Installing building essentials
echo "Installing Build Essentials..."
sudo pacman -S --noconfirm --needed base-devel wget git
echo "Done!"
sleep 3


# Installing Packages
echo "Installing Packages..."
paru -S --noconfirm --needed picom-jonaburg-git\
	acpi              \
	wmctrl            \
	playerctl         \
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
	nitrogen          \
	fetchit-git       \
	bat               \
	rofi              \
	feh               \
	xorg              \
	xorg-xinit        \
	xorg-xinput       \
	xf86-video-intel  \
	xmonad            \
	light             \
	starship
echo "Done!"
sleep 3


# Quick Fix for tint2
echo "Applying a quick fix for tint2.."
if ! [ -f /usr/lib/libasan.so.6 ]; then
    sudo ln -s /usr/lib/libasan.so.8 /usr/lib/libasan.so.6 
fi
echo "Done!"
sleep 3


# Copy Configs
echo "Copying Configs..."
cp -r ~/dotfiles/.config ~
echo "Done!"
sleep 3


# Copy Fonts and Icons
echo "Copying Fonts and Icons..."
mkdir -p ~/.local/share
cp -r ~/dotfiles/.local/share/fonts ~/.local/share
cp -r ~/dotfiles/.local/share/icons ~/.local/share
echo "Done!"
sleep 3


# Copy dotfiles
echo "Copying dotfiles..."
cp -r ~/dotfiles/.xinitrc ~
cp -r ~/dotfiles/.Xresources ~
cp -r ~/dotfiles/.gtkrc-2.0 ~
echo "Done!"
sleep 3


# Copy Themes Directory
echo "Copying Themes..."
cp -r ~/dotfiles/.themes ~
echo "Done!"
sleep 3


# Copy Xmonad Config
echo "Copying XMonad Config..."
cp -r ~/dotfiles/.xmonad ~
echo "Done!"
sleep 3


# Copy bin Directory
echo "Copying Binaries..."
cp -r ~/dotfiles/bin ~
echo "Done!"
sleep 3


# Copy TTY Directory
echo "Copying TTY Theme..."
cp -r ~/dotfiles/TTY ~
echo "Done!"
sleep 3


# Copy Wallpapers Directory
echo "Copying Wallpapers..."
cp -r ~/dotfiles/Wallpapers ~
echo "Done!"
sleep 3

# Copy ASCII
echo "Copying ASCII"
cp -r ~/dotfiles/.l ~
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


# Change Shell
echo "Changing Shell..."
chsh -s /usr/bin/fish
echo "Done!"
sleep 3


# Recompile XMonad
echo "Recompiling XMonad..."
xmonad --recompile
echo "Done!"
sleep 3


# Finalizing
echo "Set your wallpaper by executing <nitrogen ~/Wallpapers>" >> ~/Note.txt
echo "Make sure to edit your crontab by executing <crontab -e>" >> ~/Note.txt
echo "Open an issue if you face any problem" >> ~/Note.txt
echo "Enjoy!" >> ~/Note.txt
echo "Installation Complete! Make sure to read ~/Note.txt after booting. Rebooting in 5 seconds..."
sleep 5
reboot
