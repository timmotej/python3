#!/bin/env bash

declare -a commands
commands=(\
    'whoami' \
    'cd ..'
    'ls -las')

commands=(\
    'apt update -y' \
    'apt install software-properties-common' \
    'python3 -V'
)
user_type=$(whoami)
printf "\nYou are $user_type\n"
    
if [[ "$user_type" == "root" ]]; then
    for i in "${commands[@]}"; do
        bash -c "$i"
    done
else 
    for i in "${commands[@]}"; do
        if bash -c "sudo $i"; then
            echo "Ok command 'sudo $i' done successfully"
        else
            bash -c "$i"
            echo "Command '$i' done without sudo"
        fi
    done
fi
    
# ask for the user input if the user is root or not
