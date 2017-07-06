if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  sh ~/bin/startXEnv.sh
  startx
fi

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

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

source "$HOME/.config/zsh-git-prompt/zshrc.sh"
source "$HOME/.config/zsh/bindkeys.zsh"
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/prompt.zsh"
source "$HOME/.config/zsh/functions.zsh"
