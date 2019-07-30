
# Debian 10.0 VB 6.1.2 guest addition install failure

  This seems to be bug of kernel 4.19.0-5 according to [this bug
report][1]. Upgrade to debian 10.1 or 10.2 solve the problem.


    devel@master:/opt/VBoxGuestAdditions-6.1.2/init$ sudo ./vboxadd setup
    update-initramfs: Generating /boot/initrd.img-4.19.0-5-amd64
    update-initramfs: Generating /boot/initrd.img-4.19.0-6-amd64
    VirtualBox Guest Additions: Starting.
    VirtualBox Guest Additions: Building the VirtualBox Guest Additions kernel 
    modules.  This may take a while.
    VirtualBox Guest Additions: To build modules for other installed kernels, run
    VirtualBox Guest Additions:   /sbin/rcvboxadd quicksetup <version>
    VirtualBox Guest Additions: or
    VirtualBox Guest Additions:   /sbin/rcvboxadd quicksetup all
    VirtualBox Guest Additions: Building the modules for kernel 4.19.0-5-amd64.
    update-initramfs: Generating /boot/initrd.img-4.19.0-5-amd64
    modprobe vboxguest failed
    The log file /var/log/vboxadd-setup.log may contain further information.

[1]: https://www.virtualbox.org/ticket/18904
