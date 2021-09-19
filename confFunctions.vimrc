" function for active status autocorrect
function ActLang(state)
  if a:state == "on"
    echo "Auto corrector encendido"
    set spell spelllang=en,es
  elseif a:state == "off"
    echo "Auto corrector apagado"
    set nospell
  else
    echo "no se ha ejecutado una acción"
  endif
endfunction

function OpenTerminal() 
  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if has("nvim")
    execute "split term://zsh"
    execute "normal i"
  else
    execute "term zsh"
  endif
    
  " turn off numbers
  execute "set nonu"
  execute "set nornu"

  " Toggle insert on enter/exit
  silent au BufLeave <buffer> stopinsert!
  silent au BufWinEnter,WinEnter <buffer> startinsert! 

  " Set maps inside terminal buffer
  execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
  if has("nvim")
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
  else
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q!<CR>"
  endif
  execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

  " startinsert!
endfunction
