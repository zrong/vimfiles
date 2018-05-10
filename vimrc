set nocompatible
filetype off

source $HOME/vimfiles/config/plugin.vim
filetype plugin indent on

source $VIMRUNTIME/vimrc_example.vim
if has('win32')
    source $VIMRUNTIME/mswin.vim
endif

source $HOME/vimfiles/config/option.vim
source $HOME/vimfiles/config/font.vim
source $HOME/vimfiles/config/function.vim
source $HOME/vimfiles/config/plugin_option.vim

if filereadable($HOME.'/.myvimrc')
    source $HOME/.myvimrc
endif

colorscheme desert
cd $HOME
