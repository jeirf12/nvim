#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#Colores aplicables
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT

function ctrl_c(){
	echo -e "\n${yellowColour}[*]${endColour}${grayColour} Saliendo...${endColour}"
	tput cnorm;
	exit 0
}

function uninstallSettings(){
	tput civis; clear
	echo -e "\n${purpleColour}[*]${endColour}${blueColour} Desinstalando las configuraciones de neovim${endColour}"
	rm -rf ~/.config/nvim/ ~/.config/.vimrc ~/.config/coc/ ~/.vim/plugged/ > /dev/null 2>&1

	#Por ultimo instala requerimientos de python
	echo -e "\n${purpleColour}[*]${endColour}${blueColour} Desinstalando${endColour}${redColour} pynvim${endColour}"
	pip uninstall pynvim > /dev/null 2>&1
	echo -e "\n${purpleColour}[*]${endColour}${grayColour} Desinstalación Finalizada...${endColour}"
	sleep 3; tput cnorm
}

# Inicia el script de desinstalación
uninstallSettings
# Termina el script de desinstalación
