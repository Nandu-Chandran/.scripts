#!/bin/bash

echo "Building Website"
for i in ~/Documents/vimwiki/demo/*.md;
	do pandoc -f markdown -t html "$i" -o "${i%.*}.html" ;
	#do pandoc -s "$i" -c mvp.css --template template.html -o "$i".html;
done;
