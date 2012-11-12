" LaTeX-specific settings
let g:LatexBox_viewer = 'okular --unique'
let g:LatexBox_output_type = 'pdf'
let g:LatexBox_latexmk_options = '-pvc -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode -shell-escape"'
let b:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', '$': '$'}

" Use completion also for cleveref references
let g:LatexBox_ref_pattern = '\C\\v\?\(c\|C\|eq\|page\)\?ref\*\?\_\s*{'
" Use omnicompletion (provided by LaTeX-Box) for references and citations
function! LatexContext()
  if match(expand("<cWORD>"), g:LatexBox_cite_pattern . '\|' . g:LatexBox_ref_pattern) != -1
    return "\<C-x>\<C-o>"
  endif
endfunction
let b:SuperTabCompletionContexts = ['LatexContext', 's:ContextText']

" Add the following to okular for inverse search:
" gvim --remote +%l "+normal %c|" %f

noremap  <silent> <buffer> <F6> :cd %:p:h<CR>:silent! !pdflatex -synctex=1 -interaction=nonstopmode -shell-escape %<CR>
noremap  <silent> <buffer> <leader>ls :execute 'silent! !okular --unique %<.pdf\#src:'.line(".").expand("%:p")' &'<CR>
"noremap           <buffer> <leader>gt :cd %:p:h<CR>:noautocmd vimgrep /TODO/j **/*.tex<CR>:cw<CR>
" 'ko' is used instead of 'O' below for correct indentation
inoremap <silent> <buffer> <F5> <Esc>:s/\([\t ]*\)\(.*\)/\1\\begin{\2}\r\1\\end{\2}<CR>:let @/ = ""<CR>ko
inoremap          <buffer> <C-S-Up> ^{}<Left>
inoremap          <buffer> <C-S-Down> _{}<Left>

" Useful regex, bind to something?
" Replace \[ \] with equation*: s/\([ ]*\)\\\[[ ]\(.\{-}\)\\\]/\1\\begin{equation\*}\r\1\ \ \2\r\1\\end{equation\*}/gc

" Suggested by LaTeX Box
"imap <buffer> [[     \begin{
"imap <buffer> ]]     <Plug>LatexCloseCurEnv
nmap <buffer> <F5>   <Plug>LatexChangeEnv
vmap <buffer> <F7>   <Plug>LatexWrapSelection
vmap <buffer> <S-F7> <Plug>LatexEnvWrapSelection

setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal spell spelllang=en,sv
"setlocal textwidth=80
setlocal nolist " List screws up word wrap

" Conceal
"let g:tex_conceal="adgm"
"set conceallevel=2
highlight Conceal guibg=#fdf6e3 guifg=#dc322f
