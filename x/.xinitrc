xrdb -load ~/.Xresources
xst &
xset m 5/2 0 
#setxkbmap us &
compton -b --config .config/compton/compton.conf &
mpd &
polybar top -r &
polybar bottom -r &
dunst &
~/.fehbg &
redshift -l 29.3853:94.9247 &
#~/.bin/blurme &
#mpd_discord_richpresence  --fork &
exec /usr/local/bin/2bwm

