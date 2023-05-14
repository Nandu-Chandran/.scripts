#!/bin/bash

file="$HOME/youtube/sub.txt"
dbfile="$HOME/youtube/downloaded.txt"
dir="$HOME/youtube/%(title)s.%(ext)s"

while read line; do
if [[ "$line" =~ ^#.*  ]]; then
    continue
else
	yt-dlp --dateafter now-7days --playlist-end 5 --download-archive $dbfile -o $dir "https://www.youtube.com/channel/$line"
fi
done < $file


