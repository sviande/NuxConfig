export PROMPT='%b%{%F{cyan}%}%n@%m%{%F{red}%} $(echo $vcs_info_msg_0_)%{%F{cyan}%}> '
export RPROMPT="%F{${1:-green}}%~%f"
