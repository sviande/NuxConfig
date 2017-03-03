# iom prompt theme

prompt_iom_setup () {
  ZSH_THEME_GIT_PROMPT_BRANCH=" %{$fg_bold[red]%}"
  ZSH_THEME_GIT_PROMPT_PREFIX=""
  ZSH_THEME_GIT_PROMPT_SUFFIX=""
  ZSH_THEME_GIT_PROMPT_SEPARATOR=" | "
  ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{◦%G%}"
  ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{+%G%}"
  ZSH_THEME_GIT_PROMPT_BEHIND=" %{↓%G%}"
  ZSH_THEME_GIT_PROMPT_AHEAD=" %{↑%G%}"

  vcs_0="\$(git_super_status)"

  prompt_opts=(cr subst percent)

  add-zsh-hook precmd prompt_iom_precmd
}

prompt_iom_precmd() {
  setopt noxtrace localoptions extendedglob
  PROMPT="%B%F{cyan}%n@%m%f%b$vcs_0 %B%F{green}%~%b%f$prompt_newline> "
}

prompt_iom_setup "$@"
