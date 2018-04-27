#!/usr/bin/env bash

echo "Installing Pathogen..."
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing NerdTree..."
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

echo "Installing syntastic"
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
~/.vim/bundle/syntastic

echo "Installing clang_complete..."
git clone https://github.com/Rip-Rip/clang_complete.git ~/.vim/clang_complete
cd ~/.vim/clang_complete
cp -R * ..
cd ..
make

test -f ~/.vimrc
if [ $? == 0 ]
then
    echo "Backing up existing ~/.vimrc to .vimrc.bak..."
    cp ~/.vimrc .vimrc.bak
fi

echo "Copying .vimrc..."
cp $(dirname "$0")/.vimrc ~/.vimrc
