#!/usr/bin/env bash
ifconfig wlan0
ifconfig wlan0 down
macchanger -r wlan0
ifconfig wlan0 up
ifconfig wlan0
