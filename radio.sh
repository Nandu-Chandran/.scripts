#!/bin/bash
# script for online radio

declare -a options=("mango"
"club"
"mirchi"
"pattupetti"
"rainbow-fm-kochi"
"aakashavani"
"quit"
)

# The combination of echo and printf is done to add line breaks to the end of each
# item in the array before it is piped into dmenu.  Otherwise, all the items are listed
# as one long line (one item).

choice=$(echo "$(printf '%s\n' "${options[@]}")" | dmenu -p 'Select a station: ')
case "$choice" in
	quit)
		echo "Program terminated." && killall mpv 
	;;
	mango)
		choice="https://bcovlive-a.akamaihd.net/19b535b7499a4719a5c19e043063f5d9/ap-southeast-1/6034685947001/playlist.m3u8"
	;;
	club)
		choice="http://playerservices.streamtheworld.com/api/livestream-redirect/CLUBFMUAEAAC.aac"
	;;
	mirchi)
		choice="https://n02.radiojar.com/q6hbcwmx8vzuv.mp3?rj-ttl=5&rj-tok=AAABdW3c0j8AU1QT19VJzvtLWw"
	;;
	pattupetti)
		choice="https://listen.radioking.com/radio/305023/stream/354512"
	;;
	rainbow-fm-kochi)
		choice="https://air.pc.cdn.bitgravity.com/air/live/pbaudio045/playlist.m3u8"
    ;;
    aakashavani)
		choice="https://air.pc.cdn.bitgravity.com/air/live/pbaudio044/playlist.m3u8"
    ;;
    *)
		exit 1
	;;
esac

killall mpv
mpv "$choice" &

