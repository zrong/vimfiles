set nocompatible
filetype off

set runtimepath+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle')
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'zrong/vimcdoc'
call vundle#end()

filetype plugin indent on

source $VIMRUNTIME/vimrc_example.vim

if has('win32')
	source $VIMRUNTIME/mswin.vim
	behave mswin
endif

source $HOME/vimfiles/config/zrong.vim
