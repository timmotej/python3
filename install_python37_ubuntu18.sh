#!/bin/env bash

. ./exec_commands.sh

#    'apt-get install -y software-properties-common' \
commands=(\
    'apt-get update -y' \
    'printf "\n" | add-apt-repository ppa:deadsnakes/ppa' \
    'apt-get install -y python3.7' \
    'ln -s /usr/bin/python3.7 /usr/bin/python' \
    'ln -s /usr/bin/python3.7 /usr/bin/python3' \
    'python3.7 -V' \
)

user_type=$(whoami)
printf "\nYou are $user_type\n"

exec_commands "$commands"

echo "${output[@]}"

unset output
unset commands
