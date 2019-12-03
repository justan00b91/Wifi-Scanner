----------------------------------------------------------------------------------------------------------------------------------
|                                                     WIFI-SCANNER                                                               |
-----------------------------------------------------------------------------------------------------------------------------------

USAGE:
bash scanner.sh

REQUIREMENTS:
A Linux Distro

DESCRIPTION:
The script grabs the ip-address of the wireless adapter using command 'hostname -I' and then grabs the static part of the ip-
address by cutting it 'cut -d "." -f 1-3'.
The script then runs for all the subnets and checks the ping for each subnet.
Active hosts are displayed.
