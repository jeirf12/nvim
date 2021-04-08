#!/bin/bash
# -*- ENCODING: UTF-8 -*-

#Obtiene la ruta donde se encuentra el repositorio
path=$(pwd)

#se devuelve a la raiz de las carpetas del usuario
cd ~

#Crea las carpetas si no existe de forma recursiva
mkdir -p ~/.config/nvim/config

#Copia o mueve las configuraciones en la carpeta creada 
#en el anterior paso
mv $path/conf* ~/.config/nvim/config/
mv $path/init.vim ~/.config/nvim/
mv $path/.vimrc ~/.config/nvim/

#Por ultimo instala requerimientos de python
pip install pynvim

#termina el script de instalación
exit
