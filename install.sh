#!/usr/bin/zsh

set -e -o pipefail


for dir in */; do

    # skip archive folder
    if [ "$dir" = "archive/" ]; then 
       continue 
    fi

    stow -vt ~ $dir
    echo
done
