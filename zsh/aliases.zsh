alias dmesg='dmesg -L'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias c='clear'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -la --color'
alias ls='ls --color=auto'

alias vi="vim"
alias svi="sudo -E vim"

alias pong='ping free.fr -i 10'

alias dit='docker exec -i -t'
alias emoj="emoji-fzf preview | fzf --preview 'emoji-fzf get --name {1}' | cut -d \" \" -f 1 | emoji-fzf get"

watchFiles() { while inotifywait --exclude .swp -e modify -r .; do $@; done; }
