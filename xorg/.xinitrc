xbacklight -set 6 &
xset b off
xbindkeys &

xrdb ~/.Xresources

/usr/bin/start-pulseaudio-x11 &

pnmixer &
dunst &

eval $(ssh-agent)

exec i3

