#!/bin/env bash

. ./exec_commands.sh 

    #'yum install -y software-properties-common' \

commands=(\
    'yum update -y' \
    'yum install -y python3' \
    'python3 -V' \
)

user_type=$(whoami)
printf "\nYou are $user_type\n"

exec_commands $commands

echo "${output[@]}"
unset output
unset commands
