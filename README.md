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
3. YouCompleteMe intstallation for Ubuntu 16.04 (for other platforms see [full installation page](https://github.com/ycm-core/YouCompleteMe#full-installation-guide)
```
sudo apt-get install cmake
sudo apt-get install python-dev python3-dev
```
```
cd ~
mkdir ycm_build
cd ycm_build/
cmake -G "Unix Makefiles" . ~/.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core --config Release
```
```
cd ~
mkdir regex_build
cd regex_build
cmake -G "Unix Makefiles" . ~/.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/third_party/cregex
cmake --build . --target _regex --config Release
```
```
cd ~/.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls
go build
```
4. Generate helptags for plugins
```
vim
:helptags ALL
```
5. Install fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.bashrc
```
