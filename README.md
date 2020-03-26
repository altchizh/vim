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
3. Install fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.bashrc
```
4. Install necessary linters and fixers for ALE
For python
```
python3 -m pip install pylint yapf
```
To fix import pylint import errors
```
export PYTHONPATH="${PYTHONPATH}:/home/ubuntu/ml" 
```
To use yapf as ALEFixer, we need to copy .style.yapf to the project directory.
```
cp ~/.vim/.style.yapf ~/ml
```
For go
```
go get -u golang.org/x/tools/gopls
go get -u golang.org/x/lint/golint
go get -u golang.org/x/tools/cmd/goimports
```
## Useful tips
1. VI binds for Shell (useful when editing a command)
```
set -o vi
```
2. Use vim as a default editor (ex. git)
```
export EDITOR=vim
```
3. In case of colorscheme problems when running in tmux:
3.1 Set up alias in `~/.bashrc`:
```
alias tmux="TERM=screen-256color-bce tmux"
```
3.2 And set up the `default-terminal` option in `~/.tmux.conf`:
```
set -g default-terminal "xterm"
```
3.3 Lastly, do `$ source ~/.bashrc` to load new alias

