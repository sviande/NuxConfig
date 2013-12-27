alias ll="ls -la --color"
alias dmesg="dmesg -L"
alias pong="ping free.fr"

alias shutdown_vm="sudo umount /home/moi/dev/code/perso & vboxmanage controlvm WebServer poweroff"
alias start_vm='vboxmanage startvm WebServer --type=headless'

alias agent_vm='ssh-add /media/truecrypt/VMServer/id_rsa'

alias ivs='cd /home/moi/dev/code/IVS'

alias mount_vault='truecrypt -t --mount /home/moi/dev/util/vault /media/truecrypt'
alias mount_ivs="sudo mount //webtest/sviande/web"
alias mount_freebox='sudo mount -t cifs //mafreebox.freebox.fr/Disque\ Dur /media/freebox/ -o user=freebox,password=password,uid=1000,gid=1000'
alias mount_vmv="sudo mount //192.168.56.100/sviande/"

alias gitlog='git log --graph --full-history --all --no-prefix --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%x1b[0m%x20%s%x1b[36m%x20%an%x1b[0m%x20"'
