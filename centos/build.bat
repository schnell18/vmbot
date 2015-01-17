set PACKER_LOG=1
set PACKER_LOG_PATH=packer_err.log
REM packer build 5/centos-5.11-x86_64.json
REM packer build 6/centos-6.5-x86_64.json
REM packer build 6/centos-6.6-x86_64.json
packer build 7/centos-7.0.json
