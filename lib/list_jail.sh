#!/bin/sh

JM_DIR="$1"

for i in `ls -I $JM_DIR/`; do

	IP=`cat $JM_DIR/$i/jail.conf | grep '#jm_managed' | grep '{host.hostname = "'$i'";' | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`

	if [ -z `jls | awk '{print $4}' | grep $i` ]; then
		echo -e "$i $IP Stopped"
	else
		echo -e "$i $IP Running"
	fi
done
