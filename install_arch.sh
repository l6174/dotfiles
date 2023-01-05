#!/bin/bash
echo -e "Make sure you execute this script after partitioning. Continue? (y/N):"
read -p ">>>" confirmation
if [ "$confirmation" = "Y" ] || [ "$confirmation" = "y" ]; then
        sh .l/script.sh
else
        exit 1
fi
echo -e "This script is divided into 2 parts: Base installation and Setup.\nRun this script 2 times and select which installation you are performing.\nRun base installation after partitioning and Post installation after chrooting into /mnt."
read -p "Select installation type (B)ase/(P)ost (Default=Base): " itype
if [ "$itype" = "P" ] || [ "$itype" = "p" ]; then
        sh .l/script_base.sh
else
        sh .l/script_post.sh
fi
