#!/usr/bin/env bash

#filename=/home/e/Desktop/GM/GM_ssltarget.lst
#project=GM

# declare -a Targets
# Targets=(`cat "$filename"`)

# for (( i = 0 ; i < 8 ; i++))
# do
#    echo "Element [$i]: ${Targets[$i]}"
#    sslscan print "[$i]"
#    #--verbose --xml=$project_sslscan.xml
# done

# ===== Script start =============

# Simple sslscan with output
# sslscan --targets=$1 --verbose --xml=$2_sslscan.xml

# SSL2
# sslscan --ssl2 --targets=$1 | tee $2_SSL_$1.txt

# Wrong Hostname
# sslscan --targets=$1 --verbose --show-certificate --xml=$2_sslscan_wronghostname.xml

# Self signed
# sslscan --targets=$1 --verbose --show-certificate --xml=$2_sslscan_sslselfsigned.xml

# Medium ciphers support
# sslscan --targets=$1 --verbose --xml=$2_sslscan_medium_ciphers.xml

# Certificate Cannot Be Trusted
# sslscan --targets=sslselfsigned.txt --verbose --show-certificate --xml=cust_sslscan_sslselfsigned.xml
sslscan --verbose --show-certificate $1  | tee $2_sslscan_$1_cert_no_trust.txt


# ===== NMAP section ==========

# Verifying poodle with nmap
# nmap -sV -T4 -Pn --script ssl-poodle $1 -oA $2_nmap_ssl-poodle_$1 -vv

# Drown attack
# nmap -sV -T4 -Pn --script=sslv2-drown $1 -oA $2_nmap_sslv2-drown_$1 -vv

# NMAP with cipher enum
# nmap -T4 --script ssl-enum-ciphers $1 -oA $2_nmap_ssl-enum_$1 -vv



# ==== Other ======

# openssl s_client -status -connect $1 | tee $2_openssl_$1.txt

# SSL Certificate with Wrong Hostname
# openssl s_client -showcerts -status -connect $1 | tee $2_openssl_showcerts_$1.txt

# Certificate Cannot Be Trusted
# openssl s_client -connect $1 | tee $2_openssl_$1_cert_no_trust.txt
testssl $1 | tee $2_testssl_$1_no_trust.dk

# Testssl
# testssl $1 | tee $2_testssl_$1.dk


# MITM RDP scan
# sslscan --targets=$1 --rdp --verbose --show-certificate --xml=$2_sslsc an_msrdpmitm.xml