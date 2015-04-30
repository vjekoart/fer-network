#!/bin/sh

# Make sure your interface is up
sudo ifconfig wlan0 up

# Connect to KSET-public network
sudo iwconfig wlan0 essid 'KSET-public' key open

# Run dhclient on wlan0
sudo dhclient wlan0