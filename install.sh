# Copy content to it's place
cp -r ./* ~/.


# Install Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

# Update
sudo pacman --noconfirm -Syu


# Change 'xf86-video-intel' accordingly
# Remove the things which are bloat to you like chromium, zathura, etc.
sudo pacman -S --noconfirm --needed base-devel wget git xf86-video-intel rofi feh xorg xorg-xinit xorg-xinput xmonad fish alsa-utils cava lxappearance qt5ct polkit thunar zoxide exa zathura chromium papirus-icon-theme


# AUR Dependencies
paru -S picom-jonaburg-git\
	acpi              \
	candy-icons-git   \
	wmctrl            \
	alacritty         \
	playerctl         \
	dunst             \
	xmonad-contrib    \
	jq                \
	xclip             \
	maim              \
	rofi-greenclip    \
	xautolock         \
	betterlockscreen


# Quick Fix for tint2
if ! [ -f /usr/lib/libasan.so.6 ]; then
    sudo ln -s /usr/lib/libasan.so.8 /usr/lib/libasan.so.6 
fi


# Change TTY Theme
TTY/build.sh
TTY/install.sh macchiato


# Change Shell
chsh -s /usr/bin/fish
