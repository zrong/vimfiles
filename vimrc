set nocompatible
filetype off

"let $PYTHONHOME="/usr/local/Cellar/python3/3.6.1/Frameworks/Python.framework/Versions/3.6"
"let $PYTHONPATH="/usr/local/Cellar/python3/3.6.1/Frameworks/Python.framework/Versions/3.6/bin"

call plug#begin('$HOME/vimfiles/plugged')
Plug 'zrong/fencview.vim'
Plug 'asins/vimcdoc'
Plug 'scrooloose/vim-statline'

" Program language support
Plug 'leafgarland/typescript-vim'

" File Tool
Plug 'wannesm/wmgraphviz.vim'

" Search
Plug 'dkprice/vim-easygrep'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/LeaderF', {'do': './install.sh'}

" Search depolete and requirements
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" IDE Tools
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'

" Editor
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'
Plug 'Shougo/denite.nvim'


" Coding common
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'

" Plugin 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neomake/neomake'

" Coding Python
Plug 'nvie/vim-flake8'

" Coding Web Front
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'marijnh/tern_for_vim'
Plug 'elzr/vim-json'

" ==================== No use start
" toooooo slowly
" Plugin 'davidhalter/jedi-vim'

" Garbled in chinese, need patch the font.
" Plugin 'powerline/powerline', {'rtp':'powerline/bindings/vim/'}
" ==================== No use end

call plug#end()

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

let g:dir_works = $HOME.'/works'
let g:dir_casual = g:dir_works.'/SLI/casual'

cd $HOME
