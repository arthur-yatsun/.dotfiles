#!/bin/zsh

for dir in */; do
    # skip dir names started with "."
    if [[ "$dir" = .* ]]; then
       echo "skipping ${dir}"
       continue
    fi

    echo "Installing ${dir}"
    stow -vt ~ $dir
done

