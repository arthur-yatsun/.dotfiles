#!/bin/zsh

install_dotfiles () {
    for dir in */; do
        # skip dir names started with "."
        if [[ "$dir" = .* ]]; then 
           echo "skipping ${dir}"
           continue 
        fi
        
        echo "Installing ${dir}"
        stow -vt ~ $dir
    done
}

install_personal_dotfiles () {
    cd ./.personal/
    install_dotfiles
}

OPTION=$1
case $OPTION in
    -p)
        install_personal_dotfiles
        ;;
    *)
        install_dotfiles
        ;;
esac
