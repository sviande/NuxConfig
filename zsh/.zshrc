#
# User configuration sourced by interactive shells
#
#
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  sh ~/bin/startXEnv.sh
  startx
fi
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source "$HOME/.config/zsh/aliases.zsh"

export EDITOR=/usr/bin/vim

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
