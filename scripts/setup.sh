#!/bin/sh

set -e

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

cat >~/.vimrc <<-VIM
set nocompatible
filetype on
filetype off

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kergoth/vim-kergoth'
Bundle 'kergoth/vim-kergoth-misc'

Bundle 'CSApprox'
Bundle 'CountJump'
Bundle 'LargeFile'
Bundle 'ManPageView'
Bundle 'Modeliner'
Bundle 'NERD_tree-Project'
Bundle 'Python-2.x-Standard-Library-Reference'
Bundle 'Python-3.x-Standard-Library-Reference'
Bundle 'bufexplorer.zip'
Bundle 'chrisbra/changesPlugin'
Bundle 'ciaranm/detectindent'
Bundle 'ciaranm/securemodelines'
Bundle 'diff_movement'
Bundle 'easytags.vim'
Bundle 'ehamberg/vim-cute-python'
Bundle 'ervandew/supertab'
Bundle 'git://git.wincent.com/command-t'
Bundle 'github-theme'
Bundle 'godlygeek/tabular'
Bundle 'guns/jellyx.vim'
Bundle 'help_movement'
Bundle 'indentpython.vim--nianyang'
Bundle 'jnwhiteh/vim-golang'
Bundle 'kergoth/aftersyntaxc.vim'
Bundle 'kergoth/vim-HiLinkTrace'
Bundle 'kergoth/vim-bitbake'
Bundle 'luainspect.vim'
Bundle 'matchit.zip'
Bundle 'mattn/gist-vim'
Bundle 'mileszs/ack.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'pyflakes.vim'
Bundle 'pylint.vim'
Bundle 'python_import.vim'
Bundle 'reload.vim'
Bundle 'rson/vim-conque'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'session.vim--Odding'
Bundle 'shell.vim--Odding'
Bundle 'sjl/gundo.vim'
Bundle 'taglist.vim'
Bundle 'timcharper/gitosis.vim'
Bundle 'tmatilai/gitolite.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-pathogen'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-gocode'
Bundle 'vis'

filetype plugin indent on
VIM

mkdir -p ~/.vim/{bundle,backup,undo,swap}

if ! [ -d ~/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
