#! /bin/bash

clear

echo "===Raspbian Temperature Monitor==="
while :

do

tput sc
/opt/vc/bin/vcgencmd measure_temp
sleep 0.5
tput rc
tput el

done
