#! /usr/bin/env bash

HOST=192.168.1.111

if ! ping=$(ping -n -c 1 -W 1 $HOST); then
    echo "%{F#B6B9B6}  %{F-}"
else
    rtt=$(echo "$ping" | sed -rn 's/.*time=([0-9]{1,})\.?[0-9]{0,} ms.*/\1/p')


if [ "$rtt" -lt 50 ]; then
        icon="%{F#8B7545}  %{F-}"
    else
        icon="%{F#B6B9B6}  %{F-}"
    fi

    echo "$icon"
fi

