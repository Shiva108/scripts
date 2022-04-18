#!/bin/bash
VMWARE_VERSION=workstation-15.0.1 #This needs to be the actual name of the appropriate branch in mkubecek's GitHub repo for your purposes
TMP_FOLDER=/tmp/patch-vmware
rm -fdr $TMP_FOLDER
mkdir -p $TMP_FOLDER
cd $TMP_FOLDER
git clone https://github.com/mkubecek/vmware-host-modules.git #Use `git branch -a` to find all available branches and find the one that's appropriate for you
cd $TMP_FOLDER/vmware-host-modules
git checkout $VMWARE_VERSION
git fetch
make
sudo make install
sudo rm /usr/lib/vmware/lib/libz.so.1/libz.so.1
sudo ln -s /lib/x86_64-linux-gnu/libz.so.1 /usr/lib/vmware/lib/libz.so.1/libz.so.1
systemctl restart vmware && vmware &
