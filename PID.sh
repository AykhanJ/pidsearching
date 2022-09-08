#!/bin/bash
read -p "PID-i daxil edin:" pid 
pid2=$(ps -p $pid | awk NR==2 | awk -F " " '{print $1}') 
pid3=$(ps -p $pid -o comm= )
if [ $pid -eq $pid2 ] 2>/dev/null
then

 echo $pid3

else
	echo "PID movcud deyil!"
fi
