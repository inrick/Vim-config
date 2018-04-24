set nocompatible   " No Vi-compatibility, changes other options so put it first
set nomodeline     " Security measure, do not apply file specific settings
set encoding=utf-8

" Setup plugins
filetype off
set runtimepath+=$HOME/.vim/plugins/repos/github.com/Shougo/dein.vim
if dein#load_state('$HOME/.vim/plugins/')
  call dein#begin('$HOME/.vim/plugins/')
  call dein#add('Shougo/dein.vim')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('godlygeek/tabular')
  call dein#add('ervandew/supertab')
  call dein#add('inrick/vim-colors-bclear2')
  call dein#add('junegunn/fzf.vim')
  call dein#add('mileszs/ack.vim')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/syntastic')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-vinegar')
  call dein#add('vim-scripts/cscope_macros.vim')
  call dein#add('vim-scripts/LaTeX-Box')
  call dein#end()
  call dein#save_state()
endif

set noruler
set showcmd
set laststatus=2
set statusline=%f\ %M\ %=\ %y
set history=100
set dir=$HOME/.vim/swp
set backspace=indent,eol,start
set number
set relativenumber
set showmatch
set mouse=a
if !has('nvim')
  set ttymouse=sgr
end
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
set nolist
set listchars=tab:»\ ,trail:·
set wrap
set nolinebreak
if version >= 800
  set nobreakindent
end
set formatoptions+=j
set nojoinspaces
set textwidth=79
set colorcolumn=+1
set display+=lastline
set nofoldenable
set foldmethod=marker " Fold between {{{ and }}}
set wildmenu
set wildmode=list:longest,full
set splitbelow
set splitright
set tags=./tags;
set completeopt=menuone,preview,noselect
set omnifunc=syntaxcomplete#Complete
if has('unix')
  set clipboard=unnamedplus
endif

syntax on
filetype plugin indent on
set novisualbell
set t_vb=
set t_Co=256 " Force 256 colors
set background=light
colorscheme solarized

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
  colorscheme bclear2
endif

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

inoremap <silent> <Del>      <C-O>x
noremap           <leader>w  :update<CR>
noremap           <leader>cd :cd %:p:h<CR>
nnoremap <silent> <CR>       :nohlsearch<CR><CR>
noremap           <leader>gt :noautocmd vimgrep /TODO\\|FIXME\\|XXX/j %<CR>:cw<CR>
noremap           <F7>       :set list!<CR>
noremap           <F8>       :make<CR>

" Plugin mappings
noremap           <leader>e  :Explore<CR>
nnoremap          <leader>b  :Buffers<CR>
nnoremap          <leader>f  :Files<CR>
nnoremap          <C-p>      :GFiles<CR>
nnoremap          <leader>l  :Ack!<space>
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

" Plugin settings
let g:netrw_liststyle = 3 " tree

let g:ftplugin_sql_omni_key = '<C-K>'

let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<C-n>'

let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers = ['flake8']

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

if executable('opam')
  let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
  if executable('ocamlmerlin')
    execute 'set rtp+=' . g:opamshare . '/merlin/vim'
    let g:merlin_split_method = 'vertical'
    let g:syntastic_ocaml_checkers = ['merlin']
    autocmd FileType ocaml call SuperTabSetDefaultCompletionType('<C-x><C-o>')
    autocmd FileType ocaml nmap <buffer> <C-]> :MerlinLocate<CR>
  endif
  if executable('ocp-indent')
    execute 'set rtp+=' . g:opamshare . '/ocp-indent/vim'
  endif
  if executable('ocp-index')
    execute 'set rtp+=' . g:opamshare . '/ocp-index/vim'
  endif
endif
