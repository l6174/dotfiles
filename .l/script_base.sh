echo -e "This script is divided into 2 parts: Base installation and Setup.\nRun this script 2 times and select which installation you are performing.\nRun base installation after partitioning and Post installation after chrooting into /mnt."
read -p "Select installation type: (B)ase/(P)ost: " itype
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
echo "Now execute (arch-chroot /mnt) and start post installation part of script."