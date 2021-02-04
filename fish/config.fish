set fish_greeting ""
fish_vi_key_bindings

function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
        bind -M $mode \cr '__fzf_search_history'
    end
end


abbr -a -U g git
abbr -a -U vi vim

set -x PATH $PATH $HOME/bin
set -x PATH $PATH $HOME/dev/go/bin
set -x PATH $PATH $HOME/.yarn/bin
