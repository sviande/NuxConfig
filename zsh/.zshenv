#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}

typeset -U path
setopt NO_HUP

export GOPATH=~/dev/go

PATH="$HOME/bin:$PATH"
PATH="$HOME/dev/go/bin:$PATH"
PATH="$PATH:`yarn global bin`"
export PATH="$PATH"

BROWSER=firefox-developer-edition
export BROWSER

export EDITOR=/usr/bin/vim

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
export MOZ_ENABLE_WAYLAND=1
export NVM_DIR="$HOME/.nvm"
export NVM_SOURCE="/usr/share/nvm"
