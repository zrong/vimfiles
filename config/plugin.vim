call plug#begin('$HOME/vimfiles/plugged')

Plug 'zrong/fencview.vim'
Plug 'asins/vimcdoc'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Basement requirements
Plug 'Shougo/deoplete.nvim'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/denite.nvim'
"Plug 'wokalski/autocomplete-flow', {'do': 'npm install -g flow-bin'}

" Search
Plug 'dkprice/vim-easygrep'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/LeaderF', {'do': './install.sh'}

" IDE Tools
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

" snippet
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

"==================== Program language support start
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/neco-vim'

" Coding Python
Plug 'nvie/vim-flake8'
Plug 'plytophogy/vim-virtualenv'
Plug 'zchee/deoplete-jedi'

"==================== Program language support end

" File Tool
Plug 'wannesm/wmgraphviz.vim'
Plug 'airblade/vim-gitgutter'

" Editor
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'

" Coding common
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'neomake/neomake'

" Coding Web Front
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'marijnh/tern_for_vim'
Plug 'elzr/vim-json'

call plug#end()

" ==================== No use start
" toooooo slowly
" Plugin 'davidhalter/jedi-vim'

" Use powerline, so ignore this plugin
" Plug 'scrooloose/vim-statline'

" Use air-line
" see https://powerline.readthedocs.io/en/latest/installation.html
" Plug 'powerline/powerline', {'rtp':'powerline/bindings/vim/'}

" Use Denite buffer
" Plug 'jlanzarotta/bufexplorer'

" Use deoplete snipp
" Plug 'SirVer/ultisnips'
" Coding Javascript

" no work
" ==================== No use end
