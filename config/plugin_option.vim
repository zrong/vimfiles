" Options for plugins

""""""""""""""""""""""""""""""
" bufexplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDetailedHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerShowTabBuffer=0
nnoremap <silent> <F11> :BufExplorer<CR>

""""""""""""""""""""""""""""""
" tagbar
""""""""""""""""""""""""""""""
nnoremap <silent> <F9> :TagbarToggle<CR>

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
nnoremap <silent> <F5> :NERDTreeToggle<CR>
nnoremap <silent> <C-F5> :NERDTreeFind<CR>
nnoremap <silent> <s-F5> :NERDTreeFocus<CR>

""""""""""""""""""""""""""""""
" EasyGrep
""""""""""""""""""""""""""""""
"let g:EasyGrepRoot = "search:.git,.svn"
let g:EasyGrepWindowPosition = "botright"
"let g:EasyGrepFilesToExclude = ".svn,.git"
let mapleader = ","


""""""""""""""""""""""""""""""
" ctrlP
""""""""""""""""""""""""""""""
let g:ctrlp_map = ',,'
