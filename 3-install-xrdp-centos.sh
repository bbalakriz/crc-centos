# Install Desktop Environment
sudo yum groupinstall -y "Server with GUI"

# Set a password for the logged in user in the centos on GCP so that it can used for the remote connection
sudo passwd crwbala

# Install Xrdp
sudo yum install -y epel-release
sudo yum install -y xrdp 
sudo systemctl enable xrdp --now
sudo systemctl status xrdp

# Configure Firewall
sudo firewall-cmd --new-zone=xrdp --permanent
sudo firewall-cmd --zone=xrdp --add-port=3389/tcp --permanent
sudo firewall-cmd --reload


Then use a RDP client like VNC to connect to the server using the *RDP* protocol


References:
===========
https://linuxize.com/post/how-to-install-xrdp-on-centos-8/




