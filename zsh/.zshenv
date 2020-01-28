#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}

typeset -U path
setopt NO_HUP

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

export GOPATH=~/dev/go

NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"
PATH="$HOME/bin:$PATH"
PATH="$HOME/dev/go/bin:$PATH"
export PATH="$PATH"

BROWSER=firefox-developer-edition
export BROWSER

export EDITOR=/usr/bin/vim

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
export MOZ_ENABLE_WAYLAND=1
export NVM_DIR="$HOME/.nvm"
export NVM_SOURCE="/usr/share/nvm"
