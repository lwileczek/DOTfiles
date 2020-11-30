#!/bin/bash

if [[ $EUID > 0 ]]
  then echo "Run as root"
  exit
fi

cp /etc/pacman.d/mirrorlist  /etc/pacman.d/mirrorlist.backup
curl -s 'https://www.archlinux.org/mirrorlist/?country=US&country=CA&protocol=https&use_mirror_status=on' | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 10 - > /etc/pacman.d/mirrorlist

# echo "New mirrorlist:"
# cat /etc/pacman.d/mirrorlist

echo "New Mirrors"
comm -23 <(sort /etc/pacman.d/mirrorlist) <(sort  /etc/pacman.d/mirrorlist.backup)

echo "Mirrors Removed"
comm -13 <(sort /etc/pacman.d/mirrorlist) <(sort  /etc/pacman.d/mirrorlist.backup)

