#!/usr/bin/env bash
cols=$(tput cols)
printf "\033[1;35m%${cols}s\033[0m" " " | tr " " "*"
printf "\033[1;33m%$(($cols/2))s\033[0m\n" "Internet Speed Test"
printf "\033[1;35m%${cols}s\033[0m" " " | tr " " "*"

speedtest_func()
{
dpkg -l | grep speedtest-cli 1>/dev/null 2>1
val=$(echo $?)

if [ $val == 1 ]
then 
	echo "Need to install speedtest-cli"
	read -s -p "Enter sudo password: " a
	echo $a | sudo -S apt-get install speedtest-cli 1>/dev/null 2>1
	speedtest
else
	speedtest
fi
}

speedtest_func

printf "\n\033[1;35m%${cols}s\033[0m" " " | tr " " "*"

#Author /OmPrakash/slientdotexe
