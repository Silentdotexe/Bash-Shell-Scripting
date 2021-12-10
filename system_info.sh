#!/usr/bin/env 
lines=$(tput cols)

printf "%${lines}s\n" " " | tr " " "*" 
printf "\033[1;31m%$(($(tput cols)/2))s \033[0m \n" "SYSTEM INFO" 
printf "%${lines}s\n"  " " | tr " " "*"
printf "\033[1;32m%s \033[0m\n" "HOST INFO"
h=$(hostnamectl)
echo -e "\n$h\n" 

printf "\033[1;32m%s \033[0;m\n" "FILE SYSTEM DISK SPACE USAGE"
f=$(df -h)
echo -e "\n$f\n"

printf "\033[1;32m%s \033[0;m\n" "FREE AND USED MEMORY"
u=$(free)
echo -e "\n$u\n"

printf "\033[1;32m%s \033[0;m\n" "SYSTEM UPTIME AND LOAD"
sup=$(uptime)
echo -e "\n$sup\n"

printf "\033[1;32m%s \033[0;m\n" "CURRENTLY LOGGED-IN USER"
us=$(who)
echo -e "\n$us\n"

printf "\033[1;32m%s \033[0;m\n" "TOP 5 MEMORY COMSUMING PROCESSES"
cp=$(ps -eo pid=PID,%mem=MEMORY%,%cpu=CPU%,comm=COMMAND --sort=-%mem | head -6)
echo -e "\n$cp\n"

printf "%${lines}s" " " | tr " " "*"
printf "\033[1;31m%$((lines/2))s\033[0;m\n" "END"
printf "%${lines}s" " " | tr " " "*"

#Author /OmPrakash/slientdotexe
