#!/usr/bin/env bash
ifconfig eth0
ifconfig eth0 down
macchanger -r eth0
ifconfig eth0 up
ifconfig eth0
