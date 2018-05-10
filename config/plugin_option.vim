" Options for plugins

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
" depolete and LanguageServer
""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['flow-language-server', '--stdio'],
    \ }

""""""""""""""""""""""""""""""
" denite
""""""""""""""""""""""""""""""
nnoremap <silent> <F3> :Denite file<CR>
nnoremap <silent> <F11> :Denite buffer<CR>
nnoremap <silent> <Leader>e :Denite grep<CR>
call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '*~', '*.o', '*.exe', '*.bak',
      \ '.DS_Store', '*.pyc', '*.sw[po]', '*.class',
      \ '.hg/', '.git/', '.bzr/', '.svn/',
      \ '.pyenv/', 'venv/', 'node_modules/', 'bower_components/', 'tmp/', 'log/', 'vendor/ruby',
      \ '.idea/', 'dist/',
      \ 'tags', 'tags-*'])


""""""""""""""""""""""""""""""
" EasyMotion
""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key='<Space>'


""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#branch#enabled = 1
"let g:airline_theme = 'simple'


""""""""""""""""""""""""""""""
" wmgraphviz
""""""""""""""""""""""""""""""
let g:WMGraphviz_output="png"
let maplocalleader=","
if has('win32')
	let g:WMGraphviz_shelloptions="-Nfontname=SimSun -Gfontname=SimSun -Efontname=Simsun"
endif
