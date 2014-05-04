colorscheme evening
set guioptions=egmrLt
set guifont=Yahei_Consolas_Hybrid:h11
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

set path+=d:/cocos2dx/quick/framework/**,d:/cocos2dx/quick/lib/cocos2d-x/**,d:/cocos2dx/quick/lib/luabinding/**

imap <A-/> <C-P>

if has("autocmd") && exists("+omnifunc")
autocmd! Filetype *
		\	if &omnifunc == "" |
		\		setlocal omnifunc=syntaxcomplete#Complete |
		\	endif
endif

command! -narg=1 Findinfiles vimgrep /<args>/ *.lua
execute pathogen#infect()

" Get all of files in the current directory
function! GetFileList(...)
	if exists('a:1')
		let path = a:1
	else
		let path = glob("%:h")
	endif
	if exists('a:2')
		let ext = a:2
	else
		let ext = "as"
	endif
	let trueList = []
	" Get files in subdirectory
	let fileList = split(glob(path."/**/*.".ext), "\<NL>")
	for afile in fileList
		if isdirectory(afile)
		" Ignore directories
			continue	
		end
		call add(trueList, afile)
	endfor
	return trueList
endfunction

" Export buffer list to current buffer
function! EchoBaddList(...)
	let baddList = call("GetFileList", a:000)
	for afile in baddList
		execute 'normal obadd '.afile
	endfor
endfunction

" Add files in path to buffer
function! BaddList(...)
	let baddList = call("GetFileList", a:000)
	for afile in baddList
		execute 'badd '.afile
	endfor
endfunction
