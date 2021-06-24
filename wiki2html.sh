#!/bin/bash

env HUGO_baseURL="file:///home/${USER}/Documents/vimwiki/vimwiki2/_site/" \
    hugo --themesDir ~/Documents/vimwiki/ -t vimwiki2 \
    --config ~/Documents/vimwiki/vimwiki2/config.toml \
    --contentDir ~/Documents/vimwiki/vimwiki2/content \
    -d ~/Documents/vimwiki/vimwiki2/_site --quiet > /dev/null
