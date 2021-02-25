# Install Xfce Desktop Environment and firefox
sudo yum install -y epel-release
sudo yum install -y Xfce firefox

# Set a password for the logged in user in the centos on GCP so that it can used for the remote connection
sudo passwd crwbala

# Install Xrdp
sudo yum install -y xrdp 
sudo systemctl enable xrdp --now
sudo systemctl status xrdp

# Configure Firewall for Xrdp
sudo firewall-cmd --add-port=3389/tcp --permanent
sudo firewall-cmd --reload

**Then use a RDP client like VNC to connect to the server using the *RDP* protocol**

References:
===========
https://linuxize.com/post/how-to-install-xrdp-on-centos-8/




