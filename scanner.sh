#!/bin/bash

clear

echo '-------------------------------------------------------------'
echo '|**********************WIFI SCANNER*************************|'
echo '-------------------------------------------------------------'

echo 'Your IP Address --->'
echo $(hostname -I | cut -d " " -f 1 ) 
echo '-------------------------------'

ADDR=$(hostname -I | cut -d "." -f 1-3 )
DOT="."
ADDRESS="${ADDR}${DOT}"

check()
{
 	ping -b -c 1 $1 > /dev/null
 	[ $? -eq 0 ] && echo ----- Machine with IP: $IP is up.-------
}

for i in {1..255}
	do
		IP="${ADDRESS}${i}"
		if [ $i -eq 255 ];
		then
			PID=$!
			sleep 15
			exit
		fi
		check $IP & disown
	done


