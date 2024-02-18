## Install

Clone to a suitable path:

```
git clone https://github.com/inrick/Vim-config.git vim
```

Run `./setup install` to symlink configuration and fetch plugins.

To keep in mind when modifying the `setup` script:

* Run `./setup plugins` to install plugins that were added to the `repos` list.

* Run `./setup update` to install newly added plugins and update the already
  installed ones (via `git pull`).
