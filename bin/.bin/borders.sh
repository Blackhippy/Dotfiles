#!/bin/sh
#
#   double borders
#

outer='0x000000'   # outer
inner1='0x885152'  # focused
inner2='0x443538'  # normal

targets() {
    case $1 in
        focused) bspc query -N -n .local.focused.\!fullscreen;;
        normal)  bspc query -N -n .local.\!focused.\!fullscreen
    esac
}

draw() { chwb2 -I "$i" -O "$o" -i "2" -o "14" $@ 2> /dev/null; }

# initial draw, and then subscribe to events
{ echo; bspc subscribe node_geometry node_focus; } |
    while read -r _; do
        i=$inner1 o=$outer draw "$(targets focused)"
        i=$inner2 o=$outer draw "$(targets  normal)"
    done
