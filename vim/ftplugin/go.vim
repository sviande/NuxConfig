set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

" eat characters after abbreviation
function! Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction
iabbrev <silent> ienil if err != nil {<CR>return}<left><c-r>=Eatchar('\s')<CR>
