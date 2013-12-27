alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias dmesg='dmesg -L'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias gitlog='git log --graph --full-history --all --no-prefix --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%x1b[0m%x20%s%x1b[36m%x20%an%x1b[0m%x20"'
alias grep='grep --color=auto'
alias ivs='cd /home/moi/dev/code/IVS'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -la --color'
alias ls='ls --color=auto'
alias mount_freebox='sudo mount -t cifs //mafreebox.freebox.fr/Disque\ Dur /media/freebox/ -o user=freebox,password=password,uid=1000,gid=1000'
alias mount_ivs='sudo mount //webtest/sviande/web'
alias mount_vault='truecrypt -t --mount /home/moi/dev/util/vault /media/truecrypt'
alias mount_webdev='sudo mount //mydevel.com/sviande/'
alias vi="vim"

alias pong='ping free.fr -i 10'

alias shutdown_webdev='sudo umount /home/moi/dev/code/perso && vboxmanage controlvm WebDev poweroff'

alias start_webdev='vboxmanage startvm WebDev --type=headless'
alias start_webtest='vboxmanage startvm Webtest-home --type=headless'
