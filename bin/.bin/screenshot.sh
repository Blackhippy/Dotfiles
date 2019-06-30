#!/usr/bin/bash

function test {
    t=$(scrot -q 100 -e 'mv $f ~/Images/shots/')
    echo $t
    return
}

call=$(test)
echo $call
