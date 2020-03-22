#!/usr/bin/env bash
cd ~

ln -sf vim ~/.vim
ln -sf vim/vimrc ~/.vimrc

apt-get install cmake 
[[ $? -ne 0 ]] && sudo apt-get install cmake 
apt-get install python-dev python3-dev
[[ $? -ne 0 ]] && sudo apt-get install python-dev python3-dev

mkdir ycm_build
cd ycm_build/
cmake -G "Unix Makefiles" . ~/.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core --config Release

cd ~
mkdir regex_build
cd regex_build
cmake -G "Unix Makefiles" . ~/.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/third_party/cregex
cmake --build . --target _regex --config Release

cd ~/.vim/pack/plugins/start/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls
go build

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
source ~/.bashrc

python3 -m pip install pylint yapf

# vim features for shell
set -o vi
export EDITOR=vim
