#! /bin/bash

echo "Bash version ${BASH_VERSION}"

echo "Building Website"

sleep 1

for file in /some/path/*.md
do
    if [ -z "$(ls -A /some/path/html/)" ]; then
    fname=`basename "$file" | cut -d "." -f 1`
       echo "This is the first time building the website, creating $fname"
    markdown $file > /some/path/html/$fname 
    cat head.txt /some/path/html/$fname footer.txt > /some/path/html/$fname.html
    rm /some/path/html/$fname
    else
    fname=`basename "$file" | cut -d "." -f 1`
          echo "Creating $fname"
       markdown $file > /some/path/html/$fname 
    cat head.txt /some/path/html/$fname footer.txt > /some/path/html/$fname.html
    rm /some/path/html/$fname
    fi
done

echo "Website Built, opening Firefox"

sleep 1

xdg-open /some/path/html/index.html
