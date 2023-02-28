lua require('plugins')

call plug#begin()

Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme catppuccin

let mapleader = ' '

set autoindent
set hlsearch
set number relativenumber

let g:camelcasemotion_key = '<leader>'
