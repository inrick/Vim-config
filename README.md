## Install
Clone to a suitable path:

```
git clone https://github.com/fabianc/Vim-config.git <somewhere>
git clone https://github.com/gmarik/vundle.git <somewhere>/vim/bundle/vundle
```

Create appropriate symlinks and then run `:BundleInstall` in Vim.

To patch LaTeX-Box to use forward search with Okular:

```
patch <somewhere>/vim/bundle/LaTeX-Box/ftplugin/latex-box/common.vim < <somewhere>/latexbox.patch
```

