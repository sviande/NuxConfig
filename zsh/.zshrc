if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
fi

autoload -Uz compinit && compinit
autoload -U colors && colors
autoload -U promptinit && promptinit
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats       '%b'

setopt promptsubst
setopt hist_ignore_all_dups #no double
setopt autocd
setopt extendedglob

export EDITOR=/usr/bin/vim

source "$HOME/.config/zsh/bindkeys.zsh"
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/prompt.zsh"

