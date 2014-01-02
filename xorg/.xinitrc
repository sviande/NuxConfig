xbacklight -set 12 &

xbindkeys &

/usr/bin/start-pulseaudio-x11 &

pnmixer &
cbatticon &
dunst &
  
eval $(ssh-agent)   


#exec awesome
exec i3

