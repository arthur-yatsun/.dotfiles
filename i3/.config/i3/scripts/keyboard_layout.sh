#!/bin/bash

COLOR_GREEN="#00FF00"
COLOR_RED="#FF0000"

function update_holder {
  local instance="$1"
  local replacement="$2"
  echo "$json_array" | jq --argjson arg_j "$replacement" "(.[] | (select(.instance==\"$instance\"))) |= \$arg_j"
}

function remove_holder {
  local instance="$1"
  echo "$json_array" | jq "del(.[] | (select(.instance==\"$instance\")))"
}

function get_json_block {
  local body=$1
  local color=$2

  local json=`echo null | jq "{full_text: \"$body\"}"`

  if [[ $color ]]; then
    json=`echo null | jq "$json + {color: \"$color\"}"`
  fi

  echo $json
}

function get_current_language_layout {
    lang_hash=$(xset -q | grep -A 0 "LED" | cut -c59-67)
    case $lang_hash in
        00000000) lang=us;;
        00001000) lang=ru;;
        *) lang="??";;
    esac
    lang=" ⚐ ${lang} "
}

function update_lang {
  get_current_language_layout
  body=$lang

  local json=`get_json_block "$body"`
  json_array=$(update_holder language "$json")
}


i3status | (read line; echo "$line"; read line ; echo "$line" ; read line ; echo "$line" ; while true
do
  read line
  json_array="$(echo $line | sed -e 's/^,//')"

  update_lang
  echo ",$json_array"
done)
