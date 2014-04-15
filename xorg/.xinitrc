xbacklight -set 6 &
xset b off
xbindkeys &

xrdb ~/.Xresources

/usr/bin/start-pulseaudio-x11 &

pnmixer &
cbatticon &
dunst &
  
eval $(ssh-agent)   


#exec awesome
exec i3

