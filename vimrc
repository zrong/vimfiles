set nocompatible
filetype off

set runtimepath+=$HOME/vimfiles/bundle/Vundle.vim/
let $PYTHONHOME="/usr/local/Cellar/python3/3.6.1/Frameworks/Python.framework/Versions/3.6"
let $PYTHONPATH="/usr/local/Cellar/python3/3.6.1/Frameworks/Python.framework/Versions/3.6/bin"
call vundle#begin('$HOME/vimfiles/bundle')
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'vim-scripts/a.vim'
Plugin 'zrong/fencview.vim'
Plugin 'asins/vimcdoc'
Plugin 'scrooloose/vim-statline'

" Program language support
Plugin 'leafgarland/typescript-vim'

" File Tool
Plugin 'wannesm/wmgraphviz.vim'

" Search
Plugin 'dkprice/vim-easygrep'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'

" IDE Tools
Plugin 'jlanzarotta/bufexplorer'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'

" Editor
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/emmet-vim'

" Coding common
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/loremipsum'

" Coding Python
Plugin 'nvie/vim-flake8'

" Coding Web Front
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'marijnh/tern_for_vim'
Plugin 'elzr/vim-json'



" ==================== No use start
" toooooo slowly
" Plugin 'davidhalter/jedi-vim'

" Garbled in chinese, need patch the font.
" Plugin 'powerline/powerline', {'rtp':'powerline/bindings/vim/'}
" ==================== No use end

call vundle#end()

filetype plugin indent on
colorscheme desert

source $VIMRUNTIME/vimrc_example.vim
if has('win32')
    source $VIMRUNTIME/mswin.vim
endif

source $HOME/vimfiles/config/option.vim
source $HOME/vimfiles/config/font.vim
source $HOME/vimfiles/config/function.vim
source $HOME/vimfiles/config/plugin_option.vim

cd $HOME

if has("autocmd") && exists("+omnifunc")
autocmd! Filetype *
        \   if &omnifunc == "" |
        \       setlocal omnifunc=syntaxcomplete#Complete |
        \   endif
endif

