#!/usr/bin/env bash
#Service Status checker
read -p "Enter Services name: " -a service
for i in ${service[@]}
do	
	
	status=$(systemctl status $i | awk -F " " '/Active/ {print $3 }' | tr "()" " " | tr -d " " | tr [a-z] [A-Z])

	echo -e "Status of $i \033[0;31m$status\033[0m"

done

#Author /OmPrakash/silentdotexe