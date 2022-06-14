#!/usr/bin/env bash
cd /opt
git clone https://github.com/BC-SECURITY/Empire/
cd /opt/Empire
./setup/install.sh
cd /opt/Empire
./empire --rest
