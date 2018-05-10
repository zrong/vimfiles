" all options

set listchars=tab:>-,trail:-,eol:$
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,latin1
set fileformats=unix,dos,mac
set nobackup
set hlsearch
set incsearch
set showmatch
set number
set tabstop=4
set shiftwidth=4
set diffopt=filler,vertical
"set splitright 
"set splitbelow
"set autochdir
"set scrolloff=5
set autoindent
set smartindent
set cindent
set sessionoptions+=unix,slash
set formatoptions+=mMor
set noundofile
set backspace=indent,eol,start
set ruler
set expandtab
"let &titlestring='%F'
set wildignore+=*.pyc,*.git,node_modules,__pycache__,*.pyenv,venv

if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading\ -S
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
