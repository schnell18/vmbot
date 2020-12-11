# Automated virtual machine building w/ Packer
This repository maintains scripts and configuration files for automated
virtual machine building with [Packer][1].

# Build instructions
Install Packer and VirtualBox. Then on Windows, you type:

    build.bat

This will build all virtual machine available in the catalog. Feel free
to comment out the ones you don't like and only build what you need.
On Linux/MacOS, you run this instead:

    ./build.sh

Before you build centos-6.9-java8-x86\_64.json, you need download a
recent JDK rpm from Oracle and place it under the centos/.rpms directory.

# Virtual Machine catalog
| Type          | OS                  | Pkgs      | root pass | comment   |
| ------------- | ------------------- | --------- | --------- | --------- |
| VirtualBox    | Debian-10.6         | core,base | root      | Done      |
| VirtualBox    | Debian-10.4         | core,base | root      | Done      |
| VirtualBox    | Debian-10.3         | core,base | root      | Done      |
| VirtualBox    | Debian-10.2         | core,base | root      | Done      |
| VirtualBox    | Debian-10.1         | core,base | root      | Done      |
| VirtualBox    | Debian-9.8          | core,base | root      | Done      |
| VirtualBox    | CentOS-8.3          | core,base | root      | Done      |
| VirtualBox    | CentOS-8.0          | core,base | root      | Done      |
| VirtualBox    | ScientificLinux-7.6 | core,base | root      | Done      |
| VirtualBox    | CentOS-7.4          | core,base | root      | Done      |
| VirtualBox    | CentOS-7.3          | core,base | root      | Done      |
| VirtualBox    | CentOS-7.2          | core,base | root      | Done      |
| VirtualBox    | CentOS-7.0          | core,base | root      | Done      |
| VirtualBox    | CentOS-6.7          | core,base | root      | Done      |
| VirtualBox    | CentOS-6.6          | core,base | root      | Done      |
| VirtualBox    | CentOS-6.5          | core,base | root      | Done      |
| VirtualBox    | CentOS-5.11         | core,base | root      | Done      |
| VirtualBox    | CentOS-5.11         | core,base | root      | Done      |

You can also use ready-made Debian 10.x boxes [schnell18/buster64][2]
from my Vagrant cloud repository.

[1]: https://github.com/mitchellh/packer
[2]: https://app.vagrantup.com/schnell18/boxes/buster64
