xset b off

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

eval $(/usr/bin/gnome-keyring-daemon -d --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xrdb ~/.Xresources

source ~/.config/xorg/displayEnv

dunst &
xbindkeys &
urxvtd -q -o -f

redshift &
cat ~/.config/i3/baseConfig > ~/.config/i3/config
cat ~/.config/i3/config.$DisplayEnv >> ~/.config/i3/config

sh ~/.config/xorg/xrandr.$DisplayEnv.sh

feh --bg-scale wallpapers/current.png &

PATH=$HOME/.gem/ruby/2.0.0/bin:$HOME/bin:/opt/android-sdk/platform-tools:$HOME/dev/go/bin:$PATH

exec i3;exit
