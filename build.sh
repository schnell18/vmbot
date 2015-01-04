#export PACKER_LOG=1
#export PACKER_LOG_PATH=packer_err.log
packer build centos-6.5-x86_64.json
packer build centos-5.11-x86_64.json
