" LaTeX-specific settings
" vim-LaTeX
" set grepprg=grep\ -nh\ $*
" let g:tex_flavor="latex"
" let g:Tex_ViewRule_ps = 'okular --unique'
" let g:Tex_ViewRule_pdf = 'okular --unique'
" let g:Tex_ViewRule_dvi = 'okular --unique'
" let g:Tex_CompileRule_dvi = 'latex -src-specials -interaction=nonstopmode $*'
" let g:Tex_Leader="§"
" LaTeX Box
let g:LatexBox_viewer = 'okular --unique'
" let g:LatexBox_output_type = 'dvi'
" let g:LatexBox_latexmk_options = '-pvc -latex="latex -src-specials -interaction=nonstopmode"'
let g:LatexBox_output_type = 'pdf'
let g:LatexBox_latexmk_options = '-pvc -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode"'

" Mappings
" noremap <silent> <buffer> <F6> :silent! !latex -src-specials -interaction=nonstopmode %<CR><CR>
noremap <silent> <buffer> <F6> :silent! !pdflatex -synctex=1 -interaction=nonstopmode %<CR><CR>
" noremap <silent> <buffer> <leader>ls :execute 'silent! !okular --unique %<.dvi\#src:'.line(".").expand("%:p")' &'<CR>
noremap <silent> <buffer> <leader>ls :execute 'silent! !okular --unique %<.pdf\#src:'.line(".").expand("%:p")' &'<CR>
inoremap <silent> <buffer> <F5> <C-O>:s/\([\t ]*\)\(.*\)/\1\\begin{\2}\r\1\\end{\2}<CR><C-O>k<C-O>o

" Useful regex, bind to something?
" Replace \[ \] with equation*: s/\([ ]*\)\\\[[ ]\(.\{-}\)\\\]/\1\\begin{equation\*}\r\1\ \ \2\r\1\\end{equation\*}/gc

" Suggested by LaTeX Box
" imap <buffer> [[        \begin{
" imap <buffer> ]]        <Plug>LatexCloseCurEnv
nmap <buffer> <F5>      <Plug>LatexChangeEnv
vmap <buffer> <F7>      <Plug>LatexWrapSelection
vmap <buffer> <S-F7>    <Plug>LatexEnvWrapSelection

" Settings
" setlocal makeprg="latex -src-specials -interaction=nonstopmode %"
setlocal makeprg="pdflatex -synctex=1 -interaction=nonstopmode %"
setlocal tabstop=2
setlocal shiftwidth=2 " Auto-indent by this much
setlocal softtabstop=2 " It kind of reads 2 spaces as a TAB character
setlocal spell spelllang=en,sv " Spell checking language
setlocal textwidth=80
setlocal nolist " List screws up word wrap

