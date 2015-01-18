colorscheme desert
set guioptions=egmrLt
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
set noexpandtab
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
set nobackup

if has('win32')
	set guifont=Yahei_Consolas_Hybrid:h11
elseif has('mac')
	set guifont=Menlo:h16,Courier:h16
endif

imap <A-/> <C-P>

if has("autocmd") && exists("+omnifunc")
autocmd! Filetype *
		\	if &omnifunc == "" |
		\		setlocal omnifunc=syntaxcomplete#Complete |
		\	endif
endif

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

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
