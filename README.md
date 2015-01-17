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

# Virtual Machine catalog
| Type          | OS            | Pkgs      | root pass | comment   |
| ------------- | ------------- | --------- | --------- | --------- |
| VirtualBox    | CentOS-7.0    | core,base | root      | WIP       |
| VirtualBox    | CentOS-6.6    | core,base | root      | Done      |
| VirtualBox    | CentOS-6.5    | core,base | root      | WIP       |
| VirtualBox    | CentOS-5.11   | core,base | root      | root      |

[1]: https://github.com/mitchellh/packer
