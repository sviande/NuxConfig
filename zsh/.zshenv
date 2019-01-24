typeset -U path
setopt NO_HUP

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

export GOPATH=~/dev/go
export GDK_BACKEND=wayland

NPM_PACKAGES="${HOME}/.npm-packages"


PATH="$NPM_PACKAGES/bin:$PATH"
PATH="$HOME/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
