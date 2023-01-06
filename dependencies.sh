# Install Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si


# Update
sudo pacman --noconfirm -Syu


# Change 'xf86-video-intel' accordingly
sudo pacman -S --noconfirm --needed base-devel wget git xf86-video-intel rofi feh xorg xorg-xinit xorg-xinput xmonad fish


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


if ! [ -f /usr/lib/libasan.so.6 ]; then
    sudo ln -s /usr/lib/libasan.so.8 /usr/lib/libasan.so.6 
fi

chsh -s /usr/bin/fish
