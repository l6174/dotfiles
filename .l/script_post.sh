ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
read -p "Enter your desired hostname: " Hname
echo "$Hname" > /etc/hostname
echo "Set your root password:"
passwd
read -p "Enter your username: " Uname
useradd -m -G wheel -s /bin/bash $Uname
echo "Set password for $Uname:"
passwd $Uname
echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers
systemctl enable iwd
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
echo -e "Base installation is done!\nYou can now reboot and install rice if you want."
