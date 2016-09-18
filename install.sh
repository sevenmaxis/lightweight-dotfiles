#!/bin/sh

add_to_inputrc() {
  file='/etc/inputrc'
  string=$1

  if grep -q "$string" "$file"; then
    echo "found '$file' file with '$string' string"
  else
    echo "$string" >> $file
  fi
}

add_to_inputrc 'set keymap vi-command'
add_to_inputrc 'set editing-mode vi'

# TODO: this lines prodeces a lot of warnings
. /etc/inputrc
