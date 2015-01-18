autocmd BufNewFile,BufRead *.as 
	\ source $HOME/vimfiles/config/flash.vim
	\ | set filetype=actionscript makeprg=ant
	\ | let &errorformat=iconv("%E\ \ \ \ [mxmlc]%f(%l):\ 列:\ %c\ %m,%E\ \ \ \ [mxmlc]%f:\ \%m", 'utf8', &enc)
	\ | set path+=$storage/zrong/as3/src/**
