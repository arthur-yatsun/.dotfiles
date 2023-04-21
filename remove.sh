#!/usr/bin/zsh


remove_dotfiles () {
    for dir in */; do
        # skip dir names started with "."
        if [[ "$dir" = .* ]]; then 
           echo "skipping ${dir}"
           continue 
        fi

        echo "Removing ${dir}"
        stow -vDt ~ $dir
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
