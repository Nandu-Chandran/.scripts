#!/bin/bash

BROWSER="qutebrowser"

declare -a options=(
"1 - https://youtube.com"
"2 - https://facebook.com"

"quit"
)

choice = $(printf '%s\n' "${options[@]} | dmenu -i -l 20 -p 'Bookmarks')

if [[ "$choice" == quit ]]; then
    echo "Program Terminated" && exit 1
elif [ "$choice" ]; then
    cfg= $(printf '%s\n' "${choice}" | awk '{print $NF}')
    $BROWSER "$cfg"
else
    echo "Program Terminated" && exit 1
fi

