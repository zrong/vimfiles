" Options for plugins

""""""""""""""""""""""""""""""
" bufexplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDetailedHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerShowTabBuffer=0
nnoremap <silent> <F11> :BufExplorer<CR>


""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
nnoremap <silent> <F5> :NERDTreeToggle<CR>
nnoremap <silent> <C-F5> :NERDTreeFind<CR>
nnoremap <silent> <D-F5> :NERDTreeFocus<CR>

""""""""""""""""""""""""""""""
" EasyGrep
""""""""""""""""""""""""""""""
" Track the current extension
let g:EasyGrepMode = 2
let g:EasyGrepRoot = "repository"
let g:EasyGrepWindowPosition = "botright"
" Use system grep
let g:EasyGrepCommand = 1
"let g:EasyGrepFilesToExclude = ".svn,.git"
let mapleader = ","


""""""""""""""""""""""""""""""
" depolete
""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
if has('pythonx')
    set pyxversion=3
else
    set pyxversion=2
endif

""""""""""""""""""""""""""""""
" denite
""""""""""""""""""""""""""""""
nnoremap <silent> <F3> :Denite file<CR>


""""""""""""""""""""""""""""""
" EasyMotion
""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key='<Space>'


""""""""""""""""""""""""""""""
" wmgraphviz
""""""""""""""""""""""""""""""
let g:WMGraphviz_output="png"
let maplocalleader=","
if has('win32')
	let g:WMGraphviz_shelloptions="-Nfontname=SimSun -Gfontname=SimSun -Efontname=Simsun"
endif
