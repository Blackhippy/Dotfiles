#!/bin/bash

host="127.0.0.1"
port="6600"
mpc="mpc -h ${host} -p ${port}"

art="/home/hippi/.cache/bum/current.jpg"
urgency="normal"

playing()
{
    ${mpc} current --wait
}
while true;
do
    result=$(playing)

    ${playing}
    if ${mpc} status | grep playing; then
        appname="Playing"
    else
        appname="Paused"
    fi

    dunstify -a MPD ${appname} -i ${art} -r 10000 "$result"
done
