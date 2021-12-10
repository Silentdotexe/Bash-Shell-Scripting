#!/usr/bin/env bash
f=$(find . -perm 0700 -type f)
echo "RWX files in current directory ( only OWNER)"
echo -e "-----------------------------------------------"
for i in $f
do
    echo -e "\n$i"
done
#Author /OmPrakash/slientdotexe
