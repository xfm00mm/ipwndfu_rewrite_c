#!/bin/bash

# This script allows you to chroot ("work on") 
# the raspbian sd card as if it's the raspberry pi
# on your Ubuntu desktop/laptop
# just much faster and more convenient

# credits: https://gist.github.com/jkullick/9b02c2061fbdf4a6c4e8a78f1312a689

# make sure you have issued
# (sudo) apt install qemu qemu-user-static binfmt-support

# Write the raspbian image onto the sd card,
# boot the pi with the card once 
# so it expands the fs automatically
# then plug back to your laptop/desktop
# and chroot to it with this script.

# Invoke:
# (sudo) ./chroot-to-pi.sh /dev/sdb 
# assuming /dev/sdb is your sd-card
# if you don't know, when you plug the card in, type:
# dmesg | tail -n30 


# Note: If you have an image file instead of the sd card, 
# you will need to issue 
# (sudo) apt install kpartx
# (sudo) kpartx -v -a 2017-11-29-raspbian-stretch-lite.img
# then
# (sudo) ./chroot-to-pi.sh /dev/mapper/loop0p
# With the vanilla image, you have very little space to work on
# I have not figured out a reliable way to resize it
# Something like this should work, but it didn't in my experience
# https://gist.github.com/htruong/0271d84ae81ee1d301293d126a5ad716
# so it's better just to let the pi resize the partitions

mkdir -p /mnt/raspbian

# mount partition
mount -o rw ${1}2  /mnt/raspbian
mount -o rw ${1}1 /mnt/raspbian/boot

# mount binds
mount --bind /dev /mnt/raspbian/dev/
mount --bind /sys /mnt/raspbian/sys/
mount --bind /proc /mnt/raspbian/proc/
mount --bind /dev/pts /mnt/raspbian/dev/pts

# ld.so.preload fix
sed -i 's/^/#CHROOT /g' /mnt/raspbian/etc/ld.so.preload

# copy qemu binary
cp /usr/bin/qemu-arm-static /mnt/raspbian/usr/bin/

echo "You will be transferred to the bash shell now."
echo "Issue 'exit' when you are done."
echo "Issue 'su pi' if you need to work as the user pi."

# chroot to raspbian
chroot /mnt/raspbian /bin/bash

# ----------------------------
# Clean up
# revert ld.so.preload fix
sed -i 's/^#CHROOT //g' /mnt/raspbian/etc/ld.so.preload

# unmount everything
umount /mnt/raspbian/{dev/pts,dev,sys,proc,boot,}
