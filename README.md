## Install
Clone to a suitable path:

```
git clone https://github.com/fabianc/Vim-config.git vim
git clone https://github.com/Shougo/neobundle.vim vim/vim/bundle/neobundle.vim
```

Create appropriate symlinks and then run `:NeoBundleInstall` in Vim.

To patch LaTeX-Box for zsh and to use forward search with Okular:

```
cd vim
patch vim/bundle/LaTeX-Box/ftplugin/latex-box/common.vim < latexbox.patch
```
