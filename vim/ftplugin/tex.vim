setlocal spelllang=en,sv
setlocal nospell
setlocal linebreak
setlocal suffixes+=.fls,.fdb_latexmk,.synctex.gz,.pdf

syntax spell toplevel
"let g:tex_comment_nospell=1
let g:tex_fast=""

nnoremap <silent> <buffer> <leader>v :call <SID>ViewPdf()<CR>
" 'ko' is used instead of 'O' below for correct indentation
inoremap <silent> <buffer> <F6> <Esc>:s/\([\t ]*\)\(.*\)/\1\\begin{\2}\r\1\\end{\2}<CR>:let @/ = ""<CR>ko
inoremap          <buffer> <C-S-Up> ^{}<Left>
inoremap          <buffer> <C-S-Down> _{}<Left>

"imap <buffer> [[     \begin{
"imap <buffer> ]]     <Plug>LatexCloseCurEnv
nmap <buffer> <F6>   <Plug>LatexChangeEnv
vmap <buffer> <F7>   <Plug>LatexWrapSelection
vmap <buffer> <S-F7> <Plug>LatexEnvWrapSelection

" Add the following to okular for inverse search:
" gvim --remote +%l "+normal %c|" %f
" Or, for neovim (dropped column since it seems to have no effect):
" nvr --remote-silent %f -c %l

function! s:ViewPdf()
  let cmd = '!okular --unique %<.pdf\#src:' . line('.') . expand('%:p') . ' > /dev/null 2>&1 &'
  silent! execute cmd
endfunction

let g:LatexBox_viewer = 'okular --unique'
let g:LatexBox_output_type = 'pdf'
let g:LatexBox_latexmk_options = '-pvc -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode -shell-escape"'

" Use completion also for cleveref references
let g:LatexBox_ref_pattern = '\C\\v\?\(c\|C\|eq\|page\)\?ref\*\?\_\s*{'
" Use omnicompletion (provided by LaTeX-Box) for references and citations
function! LatexContext()
  if match(expand("<cWORD>"), g:LatexBox_cite_pattern . '\|' . g:LatexBox_ref_pattern) != -1
    return "\<C-x>\<C-o>"
  endif
endfunction
let b:SuperTabCompletionContexts = ['LatexContext', 's:ContextText']

" Conceal
"let g:tex_conceal="adgm"
"set conceallevel=2
"highlight Conceal guibg=#fdf6e3 guifg=#dc322f
