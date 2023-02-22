#!/bin/bash

#vim directory
mkdir ~/.vim && mkdir ~/.vim/autoload

git clone https://github.com/tpope/vim-pathogen.git > ~/.vim/autoload/

#install plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs\
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#copy vimrc to ~/.vimrc and save old config to ~/.vimrc.save
mv ~/.vimrc ~/.vimrc.save
mv vimrc ~/.vimrc

#install plugins
vim -c 'PlugInstall'
