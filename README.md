# My vim setup
## How to replicate the setup on a new machine
1. Clone the repo
```
git clone --recursive https://github.com/altchizh/vim.git
```
2. Symlink `.vim` and `.vimrc`
```
ln -sf vim ~/.vim
ln -sf vim/vimrc ~/.vimrc
```
3. Generate helptags for plugins
```
vim
:helptags ALL
```
4. Install `go` binaries for `vim-go`
```
:GoInstallBinaries
```

