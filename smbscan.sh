#!/bin/sh

grc nmap -p 445 --script=smb-enum-shares.nse,smb-enum-users.nse $1

grc nmap -p 111 --script=nfs-ls,nfs-statfs,nfs-showmount $1

grc enum4linux -U $1

smbclient //$1/anonymous
smbclient //$1/guest
