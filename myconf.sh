#!/bin/bash

if [[ "$GDMSESSION" = "dwm" ]]; then
    xcompmgr -c &

#    slstatus &
else
    echo "Not DWM"
fi




