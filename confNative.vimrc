"Reglas de Vim 
set hidden
set nocompatible
set number
set mouse=a
set numberwidth=1
set clipboard^=unnamed,unnamedplus
filetype plugin on
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set path +=./**
set splitbelow
set background=dark
set expandtab
set ignorecase
set incsearch

"Documentar plegado sin el número de lineas
set foldtext=getline(v:foldstart)

"Save only fold in view options
set foldmethod=manual
set viewoptions=folds
