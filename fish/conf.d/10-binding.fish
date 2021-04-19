function fish_user_key_bindings
    fish_vi_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
        bind -M $mode \cr '__fzf_search_history'
    end
end
