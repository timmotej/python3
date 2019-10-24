#!/bin/env bash

function exec_commands {
    local c=0
    if [[ "$user_type" == "root" ]]; then
        for i in "${commands[@]}"; do
            output[$c]=$(bash -c "$i" 2>&1)
            ((c++))
        done
    else 
        for i in "${commands[@]}"; do
            # try to exec with sudo, stderr to file 'e'
            bash -c "sudo $i" 1>o 2>e
            echo $c
            echo $i
            if [[ "$(cat e)" == "" ]]; then
                output[$c]="$(cat o)"
                echo "Ok command 'sudo $i' done successfully"
            else
                output[$c]=$(bash -c "$i" 2>&1)
                echo "Command '$i' done without sudo"
            fi
            ((c++))
            echo $c
            rm o; rm e
        done
    fi
}

