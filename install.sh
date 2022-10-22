#!/bin/zsh

set -e -o pipefail


install_dotfiles () {
    for dir in */; do
        # skip archive folder
        if [ "$dir" = "archive/" ]; then 
           continue 
        fi

        stow -vt ~ $dir
        echo
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
