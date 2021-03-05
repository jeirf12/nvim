"Leader key
let mapleader = " "

"Comandos para abrir la terminal abajo
nmap <c-t> :split<CR>:ter<CR>:resize 14<CR>i

"Comandos easymotion y nerdtree
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

"Comandos de guardar y cerrar Vim
nmap<Leader>w :w<CR>
nmap<Leader>q :q<CR>

"Command create new tab
nmap <Leader>tn :tabnew 

"Command jump next tab
nmap <Leader><TAB> :tabnext<CR>

"Command jump previous tab
nmap <Leader><left> :tabprev<CR>

"Command close tab
nmap <Leader>c :tabclose<CR>

"Command install Plug
nmap <Leader>pi :PlugInstall<CR>

"Comandos coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references) 

"Comandos de coc y kite para autocompletar
"use control+space para autocompletar
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

