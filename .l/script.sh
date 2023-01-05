echo -e "This script is divided into 2 parts: Base installation and Setup.\nRun this script 2 times and select which installation you are performing.\nRun base installation after partitioning and Post installation after chrooting into /mnt."
read -p "Select installation type: (B)ase/(P)ost: " itype
if [ "$itype" = "B" ] || [ "$itype" = "b" ]; then
        lsblk
        read -p "Enter Root Partition (dev/sdaX): " Root
        read -p "Enter Home Partition (dev/sdaX): " Home
        read -p "Enter EFI Partition (dev/sdaX): " EFI
        read -p "Enter Swap Partition (dev/sdaX): " Swap
        echo -e "\nRoot: $Root\nHome: $Home\nEFI: $EFI\nSwap: $Swap"
        mkdir -p /mnt
        mkdir -p /mnt/boot/efi
        mkdir -p /mnt/home
        mount $Root /mnt
        mount $EFI /mnt/boot/efi
        mount $Home /mnt/home
        swapon $Swap
        pacstrap /mnt base linux linux-firmware sof-firmware base-devel efibootmgr grub iwd
        genfstab -U /mnt >> /mnt/etc/fstab
        echo "Now execute {arch-chroot /mnt and start post installation part of script."
else if [ "$itype" = "P" ] || [ "$itype" = "p" ]; then
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
        exit
        umount -a
        echo -e "Base installation is done!\nYou can now reboot and install rice if you want."
        read -p "Reboot Now (Y/n)? " Rboot
        if [ "$Rboot" = "Y" ] || [ "$Rboot" = "y" ]; then
                reboot
        else
                exit 0
        fi
else
        echo "Error!"
        exit 1
fi