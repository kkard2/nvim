lua require('plugins')
lua require('barbar')

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

map <leader>t :Neotree toggle<Enter>

map <C-h> <C-w><
map <C-j> <C-w>+
map <C-k> <C-w>-
map <C-l> <C-w>>

map <leader>h <C-w><C-h>
map <leader>j <C-w><C-j>
map <leader>k <C-w><C-k>
map <leader>l <C-w><C-l>

map <leader>q :qa<Enter>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
