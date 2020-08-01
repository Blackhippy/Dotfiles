xrdb -load ~/.Xresources
#xst 
sxhkd &
xset m 5/2 0 
setxkbmap us &
compton -b --config .config/compton/compton.conf &
mpd &
polybar top -r &
polybar bottom -r &
~/.bin/borders.sh
dunst &
#~/.fehbg &
hsetroot -solid #070707
redshift -l 29.3853:94.9247 &
#~/.bin/blurme &
mpd_discord_richpresence  --fork &
/home/hippi/.local/bin/nzbget -c ~/.nzbget -D
exec bspwm
#exec /usr/local/bin/2bwm

