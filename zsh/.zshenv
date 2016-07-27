typeset -U path
path=(~/.gem/ruby/2.0.0/bin ~/bin /opt/android-sdk/platform-tools ~/dev/go/bin $path)

setopt NO_HUP

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

setopt INC_APPEND_HISTORY
HISTFILE=~/.config/zsh/.history
HISTSIZE=10000
SAVEHIST=10000
export HISTFILE SAVEHIST
export GOPATH=~/dev/go
