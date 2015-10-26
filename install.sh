#!/bin/sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git submodule init

ln -s ~/.config/git/.gitconfig ~/.gitconfig

ln -s ~/.config/vim/.vimrc ~/.vimrc

vim +PluginInstall +qall
mkdir -p ~/tmp/vim-undo

ln -s ~/.config/zsh/.zshrc ~/.zshrc
ln -s ~/.config/zsh/.zprofile ~/.zprofile
ln -s ~/.config/zsh/.zshenv ~/.zshenv
