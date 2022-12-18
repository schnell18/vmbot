locals {
  debian_version = "11.5"
  iso_checksum   = "sha256:99a532675ec9733c277a3f4661638b5471dc5bce989b3a2dbc3ac694c964a7f7"
  iso_url        = "https://cdimage.debian.org/debian-cd/current/amd64/iso-dvd/debian-11.5.0-amd64-DVD-1.iso"
}

source "virtualbox-iso" "debian11" {
  boot_command             = ["<esc><wait>", "auto ", "url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/debian-${local.debian_version}/preseed.cfg ", "net.ifnames=0  ", "<enter>"]
  boot_wait                = "10s"
  disk_size                = 40960
  guest_additions_path     = "VBoxGuestAdditions_{{ .Version }}.iso"
  guest_os_type            = "Debian_64"
  hard_drive_discard       = true
  hard_drive_interface     = "sata"
  hard_drive_nonrotational = true
  headless                 = false
  http_directory           = "../unattended"
  iso_checksum             = "${local.iso_checksum}"
  iso_url                  = "${local.iso_url}"
  output_directory         = "build"
  post_shutdown_delay      = "120s"
  sata_port_count          = 30
  shutdown_command         = "sudo /sbin/halt -h -p"
  ssh_password             = "devel"
  ssh_port                 = 22
  ssh_username             = "devel"
  ssh_wait_timeout         = "120m"
  vboxmanage               = [["modifyvm", "{{ .Name }}", "--memory", "1024"], ["modifyvm", "{{ .Name }}", "--cpus", "1"]]
  vm_name                  = "debian${local.debian_version}-min"
}

# a build block invokes sources and runs provisioning steps on them. The
# documentation for build blocks can be found here:
# https://www.packer.io/docs/templates/hcl_templates/blocks/build
build {
  sources = ["source.virtualbox-iso.debian11"]

  provisioner "shell" {
    execute_command = "{{ .Vars }} sudo -E sh '{{ .Path }}'"
    scripts         = [
      "../../provisioning/vboxguest.sh",
      "../../provisioning/compact.sh",
      "../provisioning/acct.sh"
    ]
  }

  post-processor "vagrant" {
    include              = ["vagrant/private.key"]
    output               = "debian${local.debian_version}-min.box"
    vagrantfile_template = "../../vagrant/Vagrantfile"
  }
}
