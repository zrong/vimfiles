set nocompatible
filetype off

set runtimepath+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle')
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'zrong/fencview.vim'
Plugin 'zrong/vimcdoc'
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/emmet-vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/a.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/vim-statline'
Plugin 'dkprice/vim-easygrep'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'easymotion/vim-easymotion'

" toooooo slowly
" Plugin 'davidhalter/jedi-vim'

" Garbled in chinese, need patch the font.
" Plugin 'powerline/powerline', {'rtp':'powerline/bindings/vim/'}
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
source $HOME/vimfiles/config/plugin_option.vim

if has("autocmd") && exists("+omnifunc")
autocmd! Filetype *
		\	if &omnifunc == "" |
		\		setlocal omnifunc=syntaxcomplete#Complete |
		\	endif
endif

