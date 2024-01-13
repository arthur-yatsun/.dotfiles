#!/usr/bin/zsh

for dir in */; do
    # skip dir names started with "."
    if [[ "$dir" = .* ]]; then
       echo "skipping ${dir}"
       continue
    fi

    echo "Removing ${dir}"
    stow -vDt ~ $dir
done

