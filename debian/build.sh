export PACKER_LOG=1
export PACKER_LOG_PATH=packer_err.log
#packer build -debug 9/debian-9.8.json
#packer build 9/debian-9.8.json
#packer build 9/debian-9.9.json
#packer build 10/debian-10.json
#packer build 10/debian-10.2.json
#packer build -debug 10/debian-10.3.json
#packer build 10/debian-10.3.json
# packer build 10/debian-10.4.json
#packer build 10/debian-10.6.json
#packer build 10/debian-10.7.json
#packer build 10/debian-10.8.json
#packer build 10/debian-10.11.json
#packer build 11/debian-11.0.json
#packer build 11/debian-11.2.json
# packer build 11/debian-11.3.json
# packer build 10/debian-10.11.json
# packer build 11/debian-11.5.json
# pushd 11/11.6
pushd 12/12.0
packer build .
popd
