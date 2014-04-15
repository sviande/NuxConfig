if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
fi

autoload -U compinit && compinit
autoload -U colors && colors

autoload -Uz vcs_info 
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats       '(%b)'

setopt promptsubst

zstyle ':completion:*:*:git:*' script /usr/share/git/completion/git-completion.zsh 
export EDITOR=/usr/bin/vim

precmd() {
    vcs_info
}


source "$HOME/.config/zsh/bindkeys.zsh"
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/prompt.zsh"

