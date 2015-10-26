# iom prompt theme

prompt_iom_help () {
  cat <<'EOF'
  Inspore By adam2
  This prompt is color-scheme-able.  You can invoke it thus:

  prompt iom [ 8bit ] [<color1> [<color2> [<color3>] [<color4>]]

where the colors are for the hyphens, current directory, user@host,
and user input bits respectively.  The default colors are cyan, green,
cyan, and white.  This theme works best with a dark background.

If you have either UTF-8 or the `nexus' or `vga' console fonts or similar,
you can specify the `8bit' option to use 8-bit replacements for the
7-bit characters.

And you probably thought adam1 was overkill ...
EOF
}

prompt_iom_setup () {
  # Some can't be local
  local prompt_gfx_tlc prompt_gfx_mlc prompt_gfx_blc

  if [[ $1 == '8bit' ]]; then
    shift
    if [[ ${LC_ALL:-${LC_CTYPE:-$LANG}} = *UTF-8* ]]; then
      prompt_gfx_tlc=$'\xe2\x94\x8c'
      prompt_gfx_mlc=$'\xe2\x94\x9c'
      prompt_gfx_blc=$'\xe2\x94\x94'
      prompt_gfx_hyphen=$'\xe2\x94\x80'
    else
      prompt_gfx_tlc=$'\xda'
      prompt_gfx_mlc=$'\xc3'
      prompt_gfx_blc=$'\xc0'
      prompt_gfx_hyphen=$'\xc4'
    fi
  else
    prompt_gfx_tlc='.'
    prompt_gfx_mlc='|'
    prompt_gfx_blc='\`'
    prompt_gfx_hyphen='-'
  fi

  # Colour scheme
  prompt_iom_color1=${1:-'8'}    # hyphens
  prompt_iom_color2=${2:-'green'}   # current directory
  prompt_iom_color3=${3:-'cyan'}    # user@host
  prompt_iom_color4=${4:-'grey'}   # user input

  ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[red]%}"
  ZSH_THEME_GIT_PROMPT_PREFIX=""
  ZSH_THEME_GIT_PROMPT_SUFFIX=""
  ZSH_THEME_GIT_PROMPT_SEPARATOR=" | "
  ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{◦%G%}"
  ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{+%G%}"
  ZSH_THEME_GIT_PROMPT_BEHIND=" %{↓%G%}"
  ZSH_THEME_GIT_PROMPT_AHEAD=" %{↑%G%}"

  local prompt_gfx_bbox
  prompt_gfx_tbox="%B%F{$prompt_iom_color1}${prompt_gfx_tlc}%b%F{$prompt_iom_color1}${prompt_gfx_hyphen}"
  prompt_gfx_bbox="%B%F{$prompt_iom_color1}${prompt_gfx_blc}${prompt_gfx_hyphen}%b%F{$prompt_iom_color1}"

  # This is a cute hack.  Well I like it, anyway.
  prompt_gfx_bbox_to_mbox=$'%{\e[A\r'"%}%B%F{$prompt_iom_color1}${prompt_gfx_mlc}%b%F{$prompt_iom_color1}${prompt_gfx_hyphen}%{"$'\e[B%}'

  prompt_l_paren="%B%F{black}("
  prompt_r_paren="%B%F{black})"

  vcs_0="\$(git_super_status)"

  prompt_user_host="%B%F{$prompt_iom_color3}%n%F{$prompt_iom_color3}@%F{$prompt_iom_color3}%m%b"

  prompt_line_1a="$prompt_gfx_tbox%B%F{$prompt_iom_color2}$prompt_user_host%b $vcs_0%F{$prompt_iom_color1}"
  prompt_line_1b=" %F{$prompt_iom_color2}%B%~%b %F{$prompt_iom_color1}"

  prompt_line_2="$prompt_gfx_bbox${prompt_gfx_hyphen}%B%F{white}"

  prompt_char="%(!.#.>)"

  prompt_opts=(cr subst percent)

  add-zsh-hook precmd prompt_iom_precmd
}

prompt_iom_precmd() {
  setopt noxtrace localoptions extendedglob

  PS1="$prompt_line_1a$prompt_line_1b$prompt_newline$prompt_line_2%B%F{white}$prompt_char %b%f%k"
  PS2="$prompt_line_2$prompt_gfx_bbox_to_mbox%B%F{white}%_> %b%f%k"
  PS3="$prompt_line_2$prompt_gfx_bbox_to_mbox%B%F{white}?# %b%f%k"
  zle_highlight[(r)default:*]="default:fg=$prompt_iom_color4,bold"
}

prompt_iom_setup "$@"
