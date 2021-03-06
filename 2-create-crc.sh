# Update CentOS
sudo yum update 

# Download crc and check version
curl -LO https://mirror.openshift.com/pub/openshift-v4/clients/crc/latest/crc-linux-amd64.tar.xz && tar -Jxvf crc-linux-amd64.tar.xz && mkdir -p ~/bin && export PATH=$PATH:~/bin && mv crc-linux*/crc ~/bin/ && rm -rf crc*
crc version

crc setup
# Download crc pull secret from https://cloud.redhat.com/openshift/install/crc/installer-provisioned and keep it in ~/.crc-pull-secret
nohup crc start -m 20480 --cpus 8 -p ~/.crc-pull-secret &
