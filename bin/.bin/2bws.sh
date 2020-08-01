#!/usr/bin/env bash
# display workspace status
# requires wmctrl
wht=$(xrdb -query|awk '/\*color7:/ {print $2}'|cut -d '#' -f2)
gnc=""
SE2P=" "
red=$(xrdb -query|awk '/\*color2:/ {print $2}'|cut -d '#' -f2)
glycrnt=""
cur=$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')
total=$(xprop -root _NET_NUMBER_OF_DESKTOPS | awk '{print $3}')

for w in `seq 0 $((cur- 1))`; do line="$line"$SE2P"%{F$a$wht}$gnc"$SE2P""; done
line="$line%{F$a$red}$glycrnt"$SE2P""
for w in `seq $((cur + 2)) $total`; do line="$line"$SE2P"%{F$a$wht}$glycrnt"$SE2P""; done

echo $line%{F-}



