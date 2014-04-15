typeset -U path
path=(~/.gem/ruby/2.0.0/bin ~/bin /opt/android-sdk/platform-tools $path)

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

HISTFILE=~/.config/zsh/.history
HISTSIZE=1000
SAVEHIST=1000
export HISTFILE SAVEHIST
