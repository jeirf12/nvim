"Reglas de plugins instalados

"Quitar doble dolar en php
autocmd FileType php set iskeyword+=$

"activa o desactiva el autocorrector al entrar y salir de un .txt respectivamente
autocmd BufEnter *.txt set spell spelllang=en,es
autocmd BufLeave *.txt set nospell

"Save folds on exit and load them on edit
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent! loadview 

autocmd FileType php setlocal omnifunc=lsp#complete

"Recordar ultima linea del archivo
if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |  exe "normal g`\"" |  endif
endif

"Name user instant nvim
let g:instant_username = "fallen"

"doxygen
let g:load_doxygen_syntax = 1

au FileType gitcommit let b:EditorConfig_disable = 1

"Format sql
autocmd BufFilePre *.sql :CocCommand sql.Format

"Rulers Tagbar autoclose
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

"Ruta de python2 y python3
let g:python_host_prog = '/bin/python2'
let g:python3_host_prog = '/bin/python3'

"Reglas de ident
let g:identLine_char_list = ['│', '┊']

"----------------------------------------
" Reglas themes
" ---------------------------------------

" gruvbox  
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" nord
" colorscheme nord

" one
" colorscheme one
" set background=dark
" let g:one_allow_italics = 1

" onehalfdark
" set t_Co=256
" colorscheme onehalfdark

"----------------------------------------

"Reglas NERDTree
let NERDTreeQuitOnOpen = 1

"Reglas kite
let g:kite_supported_languages = ['javascript', 'python']
let g:kite_tab_complete=1
let g:kite_completion_max_width = 50

"Reglas coc
autocmd FileType python left b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-clangd']

"Sentence optional to warnings en coc
"let g:coc_disable_startup_warning = 1

"html, 2SX
let g:closetag_filenames = '*.html, *.js, *.jsx, *.ts, *.tsx'

"Reglas Lightlane
let g:lightline = {
         \'active': {
         \	'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
         \	'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
         \},
         \'inactive': {
         \	'left': [['inactive'], ['relativepath']],
         \	'right': [['bufnum']]
         \},
         \'component': {
         \  'bufnum': '%n',
         \  'inactive': 'inactive'
         \},
         \'component_function': {
         \  'gitbranch': 'gitbranch#name',
         \  'kitestatus': 'kite#statusline'
         \},
         \'colorscheme': 'onehalfdark',
         \'subseparator': {
         \	'left': '',
         \	'right': ''
         \},
         \}
