set nocompatible
filetype off
set runtimepath+=$HOME/vimfiles/bundle/Vundle.vim/

let path='$HOME/vimfiles/bundle'
call vundle#begin(path)
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'yianwillis/vimcdoc', {'pinned': 1}
call vundle#end()
filetype plugin indent on

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

source $HOME/vimfiles/config/zrong.vim
