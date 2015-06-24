set nocompatible
filetype off

set runtimepath+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle')
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'zrong/vimcdoc'
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/emmet-vim'
call vundle#end()

filetype plugin indent on

" source $VIMRUNTIME/vimrc_example.vim

if has('win32')
	source $VIMRUNTIME/mswin.vim
endif

colorscheme desert

source $HOME/vimfiles/config/option.vim
source $HOME/vimfiles/config/font.vim
source $HOME/vimfiles/config/function.vim

imap <A-/> <C-P>

if has("autocmd") && exists("+omnifunc")
autocmd! Filetype *
		\	if &omnifunc == "" |
		\		setlocal omnifunc=syntaxcomplete#Complete |
		\	endif
endif

