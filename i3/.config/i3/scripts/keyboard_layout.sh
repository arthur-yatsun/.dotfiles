#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
do
    read line
    lang_hash=$(xset -q | grep -A 0 "LED" | cut -c59-67)
    
    case $lang_hash in
        00000000) 
            lang=us
            ;;

        00001000) 
            lang=ru
            ;;

        *) 
            lang="??"
            ;;
    esac
    echo "$lang  $line" || exit 1
done

