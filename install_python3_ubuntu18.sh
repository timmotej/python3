#!/bin/env bash

. ./exec_commands.sh 

commands=(\
    'apt-get update -y' \
    'apt-get install -y software-properties-common' \
    'python3 -V' \
)

user_type=$(whoami)
printf "\nYou are $user_type\n"

exec_commands $commands

echo "${output[@]}"
unset output
unset commands
