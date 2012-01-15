""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File: MapCommentLines.vim                          "
" Description: Comment block of text using <leader>r "
"              Uncomment using <leader>t             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    " Python/Perl # comments
    autocmd FileType python,perl,makefile,sh,zsh,conf,sshconfig,muttrc,desktop,mplayerconf call MapCommentLines("#")
    " C/C++/C#/Java // comments
    autocmd FileType c,cpp,java,javascript,php call MapCommentLines("\\/\\/")
    " Haskell -- comments
    autocmd FileType haskell   call MapCommentLines("--")
    " TeX % comments
    autocmd FileType tex,matlab,prolog call MapCommentLines("%")
    " Vim " comments
    autocmd FileType vim       call MapCommentLines("\\\"")
    " Xdefaults ! comments
    autocmd FileType xdefaults call MapCommentLines("!")
endif

function! MapCommentLines(commentFormat)
    execute "noremap <silent> <buffer> <leader>r :call setline('.', substitute(getline('.'), '^\\([\\t ]*\\)\\(.*\\)', '\\1" . a:commentFormat . " \\2', ''))<CR>"
    execute "noremap <silent> <buffer> <leader>t :call setline('.', substitute(getline('.'), '^\\([\\t ]*\\)" . a:commentFormat . "[ ]*\\(.*\\)', '\\1\\2', ''))<CR>"
endfunction

