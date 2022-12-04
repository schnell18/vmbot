set PACKER_LOG=1
set PACKER_LOG_PATH=packer_err.log
REM packer build 8/rockylinux-8.3.json
packer build 8/rockylinux-8.4.json
