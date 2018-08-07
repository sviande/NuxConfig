source "$HOME/.config/zsh/aliases.zsh"

export EDITOR=/usr/bin/vim

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim


# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
