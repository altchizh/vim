#!/usr/bin/env bash
cd ~

ln -sf vim ~/.vim
ln -sf vim/vimrc ~/.vimrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
source ~/.bashrc

