#!/bin/bash

echo "Enter message"
read message
git add .
git commit -m "${message}"
if [ -n "$(git status --porcelain)" ];
then
    echo "ITS IS CLEAN"
else
    git status
    echo "Pushing data to the remote server!!"
    git push -u origin master
fi
