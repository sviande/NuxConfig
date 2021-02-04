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

set -Ux EDITOR vim
set -Ux BROWSER firefox-developer-edition
set -Ux MAKE_FLAGS -j24
set -Ux FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
set -Ux QT_QPA_PLATFORMTHEME qt5ct

set -x PATH $PATH $HOME/bin
set -x PATH $PATH $HOME/dev/go/bin
set -x PATH $PATH $HOME/.yarn/bin
