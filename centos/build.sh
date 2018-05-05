export PACKER_LOG=1
export PACKER_LOG_PATH=packer_err.log
# packer build 5/centos-5.11-x86_64.json
# packer build 6/centos-6.5-x86_64.json
# packer build 6/centos-6.6-x86_64.json
# packer build 6/centos-6.6-java7-x86_64.json
# packer build 6/centos-6.9-java8-x86_64.json
# packer build 6/centos-6.9-x86_64.json
# # packer build 7/centos-7.0.json
packer build 7/centos-7.4.json
