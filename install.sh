#!/bin/bash
# -*- ENCODING: UTF-8 -*-

#Obtiene la ruta donde se encuentra el repositorio
path=$(pwd)

#se devuelve a la raiz de las carpetas del usuario
cd ~

#Coloco la ruta donde va a crear la carpeta
pathCreated=~/.config/nvim/config/

#Comprueba la existencia de la carpeta
if [[ ! -d $pathCreated ]]
then
	#Crea las carpetas si no existe de forma recursiva
	mkdir -p $pathCreated 
fi

#Comprueba la existencia de los archivos conf 
if [[ -e $path/confCommands.vimrc ]] && [[ -e $path/confNative.vimrc ]] && [[ -e $path/confPlugin.vimrc ]] && [[ -e $path/confRuler.vimrc ]]
then
	#Copia o mueve las configuraciones en la carpeta creada 
	#en el anterior paso
	mv "$path/conf*" "$pathCreated"
fi

#Fijo la ruta de origen
pathSource=$path/init.vim

#Fijo la ruta de destino
pathDestination=~/.config/nvim/

#Comprueba la existencia del archivo origen
if [[ -e $pathSource ]]
then
	#Mueve el archivo a la ruta destino
	mv "$pathSource" "$pathDestination"
fi

#Fijo la ruta de origen
pathSource=$path/.vimrc

#Fijo la ruta de destino
pathDestination=~/.config/

#Comprueba la existencia del archivo origen
if [[ -e $pathSource ]]
then
	#Mueve el archivo a la ruta destino
	mv "$pathSource" "$pathDestination"
fi

#Por ultimo instala requerimientos de python
pip install pynvim

#termina el script de instalación
