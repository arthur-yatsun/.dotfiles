#!/bin/zsh
# LICENSE: PUBLIC DOMAIN
# switch between my layouts

# If an explicit layout is provided as an argument, use it. Otherwise, select the next layout from
# the set [us, it, fr].
if [[ -n "$1" ]]; then
    setxkbmap $1
else
    layout=$(setxkbmap -query | sed -n -e '/layout/ s/.*\: *//p')
    case $layout in
        us)
                setxkbmap ru
            ;;
        ru)
                setxkbmap us
            ;;
    esac
fi
