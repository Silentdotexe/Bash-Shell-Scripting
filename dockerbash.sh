#!/usr/bin/env bash
echo -e "------------------------------------------Docker Bash----------------------------------------"
echo -e "\nChecking if docker is present or not!!!"
which docker 1>/dev/null 2>/dev/null
if echo $? 1>/dev/null 2>&1
then
	echo -e  "\n$(docker -v) "
	status=$(systemctl status docker | awk -F " " '/Active/ {print $3 }' | tr "()" " " | tr -d " " | tr [a-z] [A-Z])
	echo -e "Status of Docker \033[0;31m$status\033[0m"
	
else
	echo  "Docker is not present "
	echo  "Exit"
fi

echo -e "\n----------------------------------------------------------------------------------------------"
