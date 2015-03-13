xset b off

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb ~/.Xresources

source ~/.config/xorg/displayEnv

dunst &
xbindkeys &

eval $(ssh-agent)

redshift &
cat ~/.config/i3/baseConfig > ~/.config/i3/config

exec i3
