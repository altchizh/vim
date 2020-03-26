#!/usr/bin/env bash
cd ~

ln -sf vim ~/.vim
ln -sf vim/vimrc ~/.vimrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
source ~/.bashrc

python3 -m pip install pylint yapf

# vim features for shell
set -o vi
export EDITOR=vim
