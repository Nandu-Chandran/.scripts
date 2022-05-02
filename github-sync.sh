#!/bin/bash

loc=("/home/nc/.scripts" \
    "/home/nc/.dotfiles" \
    "/home/nc/personal")

function updateRepo(){
    cd "$1"
    git-push.sh -d
    notify-send "Synced $1 with github" 
}

for val in ${loc[@]}
do
    updateRepo $val
done

