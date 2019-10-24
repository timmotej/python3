#!/bin/env bash

. ./exec_commands.sh

commands=(\
    'printf "\n" | add-apt-repository ppa:deadsnakes/ppa' \
    'apt-get update -y' \
    'apt-get install -y python3.7' \
    'python3.7 -V' \
    'apt-get install -y build-essential libssl-dev libffi-dev python-dev python3-pip' \
    'unlink /usr/bin/python3' \
    'unlink /usr/bin/python' \
    'ln -s /usr/bin/python3.7 /usr/bin/python' \
    'ln -s /usr/bin/python3.7 /usr/bin/python3' \
    'pip3 install -U  pip' \
    'pip3 install pipenv' \
    'pip3 -V' \
)

user_type=$(whoami)
printf "\nYou are $user_type\n"

exec_commands "$commands"

echo "${output[@]}"

unset output
unset commands
