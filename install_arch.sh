#!/bin/bash
echo -e "Make sure you execute this script after partitioning. Continue? (y/N):"
read -p ">>>" confirmation
if [ "$confirmation" = "Y" ] || [ "$confirmation" = "y" ]; then
        sh .l/script.sh
else
        exit 1
fi