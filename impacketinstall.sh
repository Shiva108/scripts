#!/bin/sh
sudo git clone https://github.com/SecureAuthCorp/impacket.git /opt/impacket
sudo pip3 install -r /opt/impacket/requirements.txt
sudo cd /opt/impacket/ 
sudo pip3 install .
sudo python3 setup.py install
