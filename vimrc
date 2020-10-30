set nocompatible   " No Vi-compatibility, changes other options so put it first
set nomodeline     " Security measure, do not apply file specific settings
set encoding=utf-8
set noruler
set showcmd
set showmode
set laststatus=2
set statusline=%f\ %(%M\ %)%(%R\ %)%(\ \ %{&ft}\ %)%(%{&paste?'\ \ PASTE':''}%)%=\ %l,%c
set history=100
set dir=$HOME/.vim/swp
set backspace=indent,eol,start
set nonumber
set norelativenumber
set showmatch
set mouse=a
set scrolloff=3
set nospell
set spelllang=en
set incsearch
set hlsearch
set ignorecase
set smartcase
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=8
set virtualedit=all
set nolist
set listchars=tab:→\ ,trail:~
set wrap
set linebreak
set nobreakindent
set showbreak=→
set formatoptions+=lj
set nojoinspaces
set textwidth=79
set display+=lastline
set nofoldenable
set foldmethod=manual
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set wildcharm=<C-Z>
set splitbelow
set splitright
set tags=./tags;
set completeopt=menuone,preview
set omnifunc=syntaxcomplete#Complete
if has('unix')
  set clipboard=unnamedplus
endif

" vim/nvim split
if has('nvim')
  set inccommand=nosplit
else
  set ttymouse=sgr
  packadd! matchit
end

syntax on
filetype plugin indent on
set novisualbell
set t_vb=
set t_Co=256 " Force 256 colors
set termguicolors
colorscheme mygruvbox

if has('gui_running')
  set guioptions-=T " No toolbar
  set guioptions-=m " No menu
  set guioptions-=t " No tearoff menu
  set guioptions-=e " No gui tabs
  set guioptions-=L " No left scrollbar
  set guioptions-=r " No right scrollbar
  set winaltkeys=no " Do not let the menu steal the alt-key
  set guicursor+=a:blinkon0 " Disable cursor blinking
  set guifont=Source\ Code\ Pro\ 11
  set columns=86
  set lines=40
  colorscheme mygruvbox
endif

if executable('rg')
  set grepprg=rg\ -i\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
endif

" Open quickfix/location window across the bottom after running a command
" populating them
autocmd QuickFixCmdPost [^l]* botright cwindow
autocmd QuickFixCmdPost l*    botright lwindow

let mapleader      = ','
let maplocalleader = '\'

" Easier ex mode navigation. Mostly taken from :help tcsh-style.
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>p <Up>
cnoremap <Esc>n <Down>
cnoremap <Esc><BS> <C-W>

noremap           j          gj
noremap           k          gk
noremap           gj         j
noremap           gk         k
noremap           ¤          $
noremap           <up>       <C-y>
noremap           <down>     <C-e>
nnoremap          Q          gqip
vnoremap          Q          gq
inoremap <silent> <Del>      <C-O>x
nnoremap <silent> <BS>       :nohlsearch<CR>
nnoremap <silent> <F2>       :call <SID>ToggleHints()<CR>
noremap           <F4>       :Lexplore<CR>
nnoremap          <F6>       :make test<CR>
nnoremap          <F8>       :make<CR>
nnoremap          <leader>b  :ls<CR>:b<space>
nnoremap          <leader>cd :cd %:p:h<CR>
nnoremap          <leader>gt :vimgrep /TODO\\|FIXME\\|XXX/j %<CR>
nnoremap          <leader>l  :Grep<space>
nnoremap          <leader>w  :update<CR>

" Plugin mappings
noremap           <leader>e  :Explore<CR>
nnoremap          <leader>f  :Files<CR>
nnoremap          <C-p>      :GFiles<CR>
nnoremap          <leader>gb :Gblame<CR>
nnoremap          <leader>gc :Gcommit<CR>
nnoremap          <leader>gd :Gdiff<CR>
nnoremap          <leader>gs :Gstatus<CR>
nmap              <leader>r  <Plug>NERDCommenterComment
vmap              <leader>r  <Plug>NERDCommenterComment
nmap              <leader>t  <Plug>NERDCommenterUncomment
vmap              <leader>t  <Plug>NERDCommenterUncomment
nmap              <C-_>      <Plug>NERDCommenterToggle
vmap              <C-_>      <Plug>NERDCommenterToggle
nmap              <leader>a= :Tabularize /=<CR>
vmap              <leader>a= :Tabularize /=<CR>
nmap              <leader>a, :Tabularize /,\zs/l0l1<CR>
vmap              <leader>a, :Tabularize /,\zs/l0l1<CR>
nmap              <leader>a: :Tabularize /:\zs/l0l1<CR>
vmap              <leader>a: :Tabularize /:\zs/l0l1<CR>
nmap              <leader>a<space> :Tabularize /\S\ \zs/l0l1<CR>
vmap              <leader>a<space> :Tabularize /\S\ \zs/l0l1<CR>

" Possible alternative to avoid the noisy column
" call matchadd('ColorColumn', '\%' . string(&textwidth+1) . 'v', 100)
function! s:ToggleHints()
  if &colorcolumn == ''
    set colorcolumn=+1
    set list
  else
    set colorcolumn=
    set nolist
  endif
endfunction

" :help special-buffers
function! s:CreateSplitScratch()
  split
  enew
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
endfunction

command! -nargs=+ -complete=file -bar Grep silent! grep! <args> | redraw!
command! Scratch call <SID>CreateSplitScratch()

" Plugin settings
let g:netrw_liststyle = 3 " tree
let g:ftplugin_sql_omni_key = '<C-K>'
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<C-n>'
let g:go_fmt_command = 'goimports'
let g:syntastic_mode_map = {
  \ 'mode': 'passive',
  \ 'active_filetypes': [],
  \ 'passive_filestypes': [] }
let g:deoplete#enable_at_startup = 1

runtime! ftplugin/man.vim " For :Man and <leader>K

if executable('opam')
  let s:opamshare = substitute(system('opam config var share'),'\n$','','''')
  if executable('ocamlmerlin')
    execute 'set rtp+=' . s:opamshare . '/merlin/vim'
    let g:merlin_split_method = 'vertical'
    let g:syntastic_ocaml_checkers = ['merlin']
    autocmd FileType ocaml call SuperTabSetDefaultCompletionType('<C-x><C-o>')
    autocmd FileType ocaml nmap <buffer> <C-]> :MerlinLocate<CR>
  endif
  if executable('ocp-indent')
    execute 'set rtp+=' . s:opamshare . '/ocp-indent/vim'
  endif
  if executable('ocp-index')
    execute 'set rtp+=' . s:opamshare . '/ocp-index/vim'
  endif
endif
