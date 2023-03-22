let &shell = executable('pwsh') ? 'pwsh' : 'powershell'
let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'

set shellquote= shellxquote=

let g:coq_settings = { 'auto_start': 'shut-up' }

call plug#begin()

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

lua require('plugins')
lua require('barbar')

colorscheme catppuccin

let mapleader = ' '

set autoindent
set hlsearch
set number relativenumber

let g:camelcasemotion_key = '['

nnoremap <leader>t :Neotree toggle<Enter>

nnoremap <C-h> <C-w><
nnoremap <C-j> <C-w>+
nnoremap <C-k> <C-w>-
nnoremap <C-l> <C-w>>

nnoremap <leader>h <C-w><C-h>
nnoremap <leader>j <C-w><C-j>
nnoremap <leader>k <C-w><C-k>
nnoremap <leader>l <C-w><C-l>

nnoremap <leader>q :qa<Enter>

nnoremap <leader>y \"+y
nnoremap <leader>p \"+p
nnoremap <leader>d \"+d

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>a <cmd>ToggleTerm direction=horizontal height=20<cr>
tnoremap <Esc> <C-\><C-n>

let g:livepreview_previewer = 'okular'
nnoremap <leader>s :w<cr>:! pdflatex %:p<cr><esc>
nnoremap <leader>w :w<cr>:! pdflatex %:p<cr>
