abbr -a -U g git
abbr -a -U vi vim
abbr -a -U svi sudo vim
abbr -a -U emoj "emoji-fzf preview | fzf --preview 'emoji-fzf get {1}' | cut -d \" \" -f 1 | emoji-fzf get"

if type -q nvim
  abbr -a -U vi nvim
  abbr -a -U svi sudo nvim
end
