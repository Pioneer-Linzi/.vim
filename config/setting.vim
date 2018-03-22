"
" WebVim Configuration : global settings
"
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
" source: https://github.com/krampstudio/dotvim
" year  : 2015
"
set nocompatible
scriptencoding utf-8

" wrap end of line
set wrap
set undodir=$VIM/.undodir
set nobackup
set nu
set relativenumber

" show line numbers
set number

" syntax highlighting
syntax on
set background=dark
set t_Co=256
colorscheme PaperColor


"indent
set smartindent
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set smarttab
set expandtab




set hlsearch
set incsearch

" folding manual
set foldmethod=manual


" spell check, to be activated manually
set spelllang=en_us
set nospell

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
language messages zh_CN.utf-8

