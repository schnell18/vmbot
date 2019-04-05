export PACKER_LOG=1
export PACKER_LOG_PATH=packer_err.log
#packer build -debug 9/debian-9.8.json
packer build 9/debian-9.8.json
