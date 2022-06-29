#!/usr/bin/zsh

set -e -o pipefail


remove_dotfiles () {
    for dir in */; do
        # skip archive folder
        if [ "$dir" = "archive/" ]; then 
           continue 
        fi

        stow -vDt ~ $dir
        echo
    done
}


remove_personal_dotfiles () {
    cd ./.personal/
    remove_dotfiles
}


OPTION=$1
case $OPTION in
    -p)
        remove_personal_dotfiles
        ;;
    *)
        remove_dotfiles
        ;;
esac
