xset m 1/1 &
xset s off -dpms &
xrdb -merge ~/.Xresources &
mopidy &
compton --config ~/.compton.conf &
redshift &
nm-applet &
polybar bottom &
dunst &
pulseaudio --start &
~/.fehbg  &
unclutter &
exec /usr/local/bin/2bwm
