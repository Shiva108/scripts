#!/bin/sh
masscan -p1-65535,U:1-65535 $1 --rate=1000 -p1-65535,U:1-65535 -e tun0 > ports
# ports=$(cat ports | awk -F ​ " "​ ​ '{print $4}'​ | awk -F ​ "/"​ ​ '{print $1}'​ | sort -n | tr ​ '\n' ','​ | sed ​ 's/,$//'​ )
# nmap -sSCV -Pn -T4 -vv -p​ $1_ports​ $1 -oA $1_nmap_full
