#!/bin/bash

if [ "$#"  -eq "0" ]
then
echo "Scanning Local Network 192.168.0.0/24"
declare hh=192.168.0

else
declare hh=$1
fi

for ip in `seq 1 254`; do
ping -c 1 $hh.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
