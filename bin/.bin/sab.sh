#!/bin/bash

host=192.168.1.131
port=9000
apikey=790d18c36067cd0a81205434d1db905d
sab="${host}:${port}/api?mode=queue&limit=1&output=json&apikey=${apikey}"

filename=$(curl -s "${sab}" | jq -r '.queue.slots[0] .filename')
sizeleft=$(curl -s "${sab}" | jq -r '.queue.slots[0] .sizeleft')
size=$(curl -s "${sab}" | jq -r '.queue.size')
speed=$(curl -s "${sab}" | jq -r '.queue.speed')
test=$(curl -s "${sab}" | jq -r '.queue.slots[0] .status')

echo $test
if $test -eq Downloading; then
    echo "" "Downloading:"$filename "" "Remaining:"$sizeleft"/"$size "" "Speed:"$speed
elif $test -eq Paused; then
    echo " Paused:"$filename
else
    echo " Nothing Downloading"
fi

