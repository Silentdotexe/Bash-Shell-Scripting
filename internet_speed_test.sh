#!/usr/bin/env bash
cols=$(tput cols)
printf "\033[1;35m%${cols}s\033[0m" " " | tr " " "*"
printf "\033[1;33m%$(($cols/2))s\033[0m\n" "Internet Speed Test"
printf "\033[1;35m%${cols}s\033[0m" " " | tr " " "*"

speedtest_func()
{
speedtest
}

dpkg -l | grep speedtest-cli 1>/dev/null 2>1


if echo $?  1>/dev/null 2>1
then
	echo "omy" | sudo -S apt-get -y install speedtest-cli 1>/dev/null 2>1
        speedtest_func
	

else 
	speedtest_func
fi

printf "\n\033[1;35m%${cols}s\033[0m" " " | tr " " "*"

#Author /OmPrakash/slientdotexe
