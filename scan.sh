#!/usr/bin/bash
grc nmap -sSCV -Pn -T4 -v --max-retries 3 --version-all -oX $1 $1
