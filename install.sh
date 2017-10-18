#!/bin/sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git submodule update --init

ln -s ~/.config/git/.gitconfig ~/.gitconfig

ln -s ~/.config/vim/.vimrc ~/.vimrc
ln -s ~/.config/vim/plugin ~/.vim/plugin

vim -E -s -c "source ~/.vimrc" -c PlugInstall -c qa
mkdir -p ~/tmp/vim-undo

ln -s ~/.config/zsh/.zshrc ~/.zshrc
ln -s ~/.config/zsh/.zprofile ~/.zprofile
ln -s ~/.config/zsh/.zshenv ~/.zshenv
