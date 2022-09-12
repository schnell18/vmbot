export PACKER_LOG=1
export PACKER_LOG_PATH=packer_err.log
# packer build 8/rockylinux-8.3.json
# packer build 8/rockylinux-8.4.json
packer build 9/rockylinux-9.0.json
