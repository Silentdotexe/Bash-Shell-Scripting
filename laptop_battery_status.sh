#!/usr/bin/env bash
cols=$(tput cols)
printf "\033[0;31m%${cols}s\033[0m\n" " " | tr " " "-"
printf "\033[0;33m%$((cols/2))s BATTERY STATUS\033[0m\n" 
printf "\033[0;31m%${cols}s\033[0m\n" " " | tr " " "-"

installacpi()
{
dpkg -l | grep "acpitool" 1>/dev/null 2>1
val=$(echo $?) 1>/dev/null 2>1
if [[ $val == 0 ]]
then 
	vals=$(acpitool -B)
	echo $vals
else
	read -s -p "Enter sudo pass for install acpitool" a
	echo $a | sudo -S apt install acpitool 1>/dev/null 2>1 
	vals=$(acpitool -B)
	echo  $vals
fi
}
installacpi
printf "\n\033[0;31m%${cols}s\033[0m\n" " " | tr " " "-"

#Author /0mPr@k@sh/silentdotexe
