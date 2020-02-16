
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

# CentOS 8.0 startup failure

Get errors:

    Vagrant was unable to mount VirtualBox shared folders. This is usually
    because the filesystem "vboxsf" is not available. This filesystem is
    made available via the VirtualBox Guest Additions and kernel module.
    Please verify that these guest additions are properly installed in the
    guest. This is not a bug in Vagrant and is usually caused by a faulty
    Vagrant box. For context, the command attempted was:

    mount -t vboxsf -o uid=1000,gid=1000 work /work

    The error output from the command was:

    mount: /work: unknown filesystem type 'vboxsf'.

May be caused by Linux kernal bug as found on Debian 10?

# CentOS 8.1 install failure

Get error messages like:

    Initramfs unpacking failed: write error
    rngd.service: Failed to execute command
    rngd.service: Failed at step EXEC spawn
    error creating /var/lib/lldpad/lldpad.conf
    failed to initialize configuration file
    Failed to connect to lldpad

[1]: https://www.virtualbox.org/ticket/18904
