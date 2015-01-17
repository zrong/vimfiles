set nocompatible
filetype off
set runtimepath+=$VIM/vimfiles/bundle/Vundle.vim/

let path='$VIM/vimfiles/bundle'
call vundle#begin(path)
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
" Plugin 'yianwillis/vimcdoc', {'pinned': 1}
call vundle#end()
filetype plugin indent on

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

source $VIM/vimfiles/config/zrong.vim
