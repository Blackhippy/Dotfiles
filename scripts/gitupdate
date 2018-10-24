#! /usr/bin/bash

dotfiles=~/.dots

cd $dotfiles
git add .
git status
echo -n "Enter the Description for the Change: " [Minor Update]
read CHANGE_MSG
git commit -am "${CHANGE_MSG}"
notify-send 'Git Update' 'Setup updating.'
git config credential.helper store
git push origin master
notify-send "Git Update" "Setup Updated"
