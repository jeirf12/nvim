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
