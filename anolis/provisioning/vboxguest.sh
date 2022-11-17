#!/usr/bin/env bash

mkdir /tmp/virtualbox
VERSION=$(cat /home/devel/.vbox_version)
mount -o loop /home/devel/VBoxGuestAdditions_$VERSION.iso /tmp/virtualbox
sh /tmp/virtualbox/VBoxLinuxAdditions.run
umount /tmp/virtualbox
rmdir /tmp/virtualbox
rm /home/devel/*.iso
