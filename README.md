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
| Type          | OS            | Pkgs      | root pass | comment   |
| ------------- | ------------- | --------- | --------- | --------- |
| VirtualBox    | CentOS-7.2    | core,base | root      | WIP       |
| VirtualBox    | CentOS-7.0    | core,base | root      | Done      |
| VirtualBox    | CentOS-6.7    | core,base | root      | Done      |
| VirtualBox    | CentOS-6.6    | core,base | root      | Done      |
| VirtualBox    | CentOS-6.5    | core,base | root      | Done      |
| VirtualBox    | CentOS-5.11   | core,base | root      | Done      |

[1]: https://github.com/mitchellh/packer
