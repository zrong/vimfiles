zrong's vimfiles
==================

This vimfiles are for Linux/Mac OS X/Windows/cygwin/mingw.

# set HOME enviroment

On Linux and Mac OS X, you needn't do everything.

On Windows, you MUST set HOME enviroment to you home path, following is some samples:

- c:/Users/zrong  
Only use gvim in windows.
- c:/cygwin/home/zrong
If you use the cygwin too.

# clone repostory

	git clone git@github.com:zrong/vimfiles.git $HOME/vimfiles

# set vimrc

On Windows, for cygwin or mingw, you need make a symbol link use mklink:

	mklink %HOME%/.vimrc %HOME%/vimfiles/vimrc

Else, make a symbol link use ln:

	ln -s $HOME/vimfiles/vimrc $HOME/.vimrc
