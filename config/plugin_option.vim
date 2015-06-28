" Options for plugins

""""""""""""""""""""""""""""""
" bufexplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDetailedHelp=0
lef g:bufExplorerShowRelativePath=1
lef g:bufExplorerShowTabBuffer=0
nnoremap <silent> <F11> :BufExplorer<CR>
nnoremap <silent> <s-F11> :ToggleBufExplorer<CR>
nnoremap <silent> <m-F11> :BufExplorerHorizontalSplit<CR>
nnoremap <silent> <c-F11> :BufExplorerVerticalSplit<CR>

""""""""""""""""""""""""""""""
" tagbar
""""""""""""""""""""""""""""""
nnoremap <silent> <F9> :TagbarToggle<CR>

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
nnoremap <silent> <F5> :NERDTreeToggle<CR>
