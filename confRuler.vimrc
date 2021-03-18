"Reglas de plugins instalados

autocmd BufFilePre *.sql :CocCommand sql.Format

"Rulers Tagbar autoclose
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1

"Ruta de python2 y python3
let g:python_host_prog= '/bin/python2'
let g:python3_host_prog= '/bin/python3'

"Reglas de ident
let g:identLine_char_list = ['│', '┊']

"Reglas Themes gruvbox  
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

"Reglas NERDTree
let NERDTreeQuitOnOpen = 1

"Reglas kite
let g:kite_supported_languajes = ['javascript', 'python']

"Reglas coc
autocmd FileType python left b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

"Sentence optional to warnings en coc
let g:coc_disable_startup_warning = 1

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
   \'colorscheme': 'gruvbox',
   \'subseparator': {
   \	'left': '',
   \	'right': ''
   \},
   \}

