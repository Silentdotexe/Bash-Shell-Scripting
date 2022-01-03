#!/usr/bin/env bash
printf "\033[1;31mRANDOM PASSWORD GENERATOR\033[0m\n"
read -p "Enter password length: " len
read -p "How man passwords required: " req
printf "\n"
for i in $(seq 1 $req)
do
	echo $(tr -cd /"[:alnum:]/" < /dev/urandom | fold -w $len | head -n 1)
done
printf "\n"

#Author /OmPrakash/silentdotexe
