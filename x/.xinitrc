xset m 1/1 &
xset s off -dpms &
xrdb -merge ~/.Xresources &
mopidy &
compton --config ~/.compton.conf &
redshift &
nm-applet &
polybar bottom &
polybar -c .config/polybar/weatherbar left &
polybar -c .config/polybar/leftbar right &
dunst &
pulseaudio --start --exit-idle-time=-1 &
hsetroot -solid '#AA6987' &
#~/.fehbg  &
unclutter &
exec /usr/local/bin/2bwm
