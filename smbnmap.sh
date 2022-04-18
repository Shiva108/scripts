#!/bin/bash
nmap -Pn -v -p 445 --script=smb-enum-shares.nse,smb-enum-users.nse $1
nmap -Pn -v -p 111 --script=nfs-ls,nfs-statfs,nfs-showmount $1
