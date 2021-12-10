#!/usr/bin/env bash
for i in $(seq 1 100)
do
    if [[ $(( i % 2 )) == 0 ]]
    then
        echo "$i"
    fi
done

#Author /OmPrakash/slientdotexe
