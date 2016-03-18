function setTitle() {
  print -Pn "\e]2;$1\a"
}

svndiff() {
  /usr/bin/svn diff "${@}" | colordiff | less -R
}
