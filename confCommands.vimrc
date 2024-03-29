"Leader key
let mapleader = " "

"Format Emmet html
let g:user_emmet_leader_key = '<c-z>'

"Format Document Prettier
nmap <Leader>f :CocCommand prettier.formatFile<CR>

"reload settings vimrc
nmap <Leader><CR> :source $MYVIMRC<CR>

" test vim
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

"resize windows
nmap <Leader>l  <c-w>>
nmap <Leader>h  <c-w><
nmap <Leader>j  <c-w>+
nmap <Leader>k  <c-w>-
nmap <Leader>i  <c-w>=
nmap <Leader>a  <c-w>\|

"if has('nvim')
"  "Comandos para abrir la terminal abajo (Solo sirve con neovim)
"  nmap <c-t> :split<CR>:ter<CR>-<CR>i
"endif

nmap <C-t> :call OpenTerminal()<CR>

"activar autocorrector
nmap <C-a> :call ActiveLanguage()<CR>

"Comandos easymotion y nerdtree
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Comandos de guardar Vim
nmap <Leader>w :w<CR>

"Comandos para salir y no guardar
"nmap<Leader>a ZQ 

"Comandos para salir y guardar
"nmap<Leader>x :x<CR>
"nmap<Leader>z ZZ

"Comandos para cerrar vim
nmap <Leader>q :q<CR>

"Command create new tab
nmap <Leader>tn :tabnew 

"Command jump next tab
nmap <Leader><TAB> :bnext<CR>

"Command jump previous tab
nmap <Leader><left> :bprev<CR>

"Command close tab
nmap <Leader>c :tabclose<CR>

"Command install Plug
nmap <Leader>pi :PlugInstall<CR>

"Command install Plug
nmap <Leader>pu :PlugUpdate<CR>

"Command open TagBar
nmap <Leader>tbo :TagbarOpen<CR>

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
