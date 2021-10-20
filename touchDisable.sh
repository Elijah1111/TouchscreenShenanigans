#!/bin/bash
#A very dumb script that waits to detect that the touch pad is messedup
while true
do
	journalctl -n 1 | grep "elan" > /dev/null
	if [ $? -eq 0 ] #did we find the elan_i2c error?
	then
		modprobe -r elants_i2c
		modprobe -r elan_i2c
		#remove the offending modules
		modprobe  elants_i2c
		modprobe  elan_i2c
		#reinstall them
	fi
done
