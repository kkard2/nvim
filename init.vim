let &shell = executable('pwsh') ? 'pwsh' : 'powershell'
let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'

set shellquote= shellxquote=

let g:coq_settings = { 'auto_start': 'shut-up' }

call plug#begin()

Plug 'lervag/vimtex'

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

call plug#end()

lua require('plugins')
lua require('barbar')

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

nnoremap <leader>a <cmd>ToggleTerm direction=horizontal height=20<cr>
tnoremap <Esc> <C-\><C-n>
