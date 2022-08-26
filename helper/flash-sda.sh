#!/bin/bash
DRV="/dev/sda"
umount "${DRV}1"
umount "${DRV}2"
umount "${DRV}3"
umount "${DRV}4"
gzip -dkc bin/targets/ramips/mt7621/*-ramips-mt7621-hatlab_gateboard-one-ext4-combined.img.gz | dd of="${DRV}" bs=4k
sync
gparted
