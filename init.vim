set nocompatible
set encoding=utf-8
set splitbelow
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
set cursorline
let mapleader = ","

set autoindent
set fileformat=unix

call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'  " Syntax check and fix
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'farmergreg/vim-lastplace'
Plug 'itchyny/lightline.vim'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'jacoborus/tender.vim'  " theme
Plug 'sheerun/vim-polyglot'

Plug 'alaviss/nim.nvim'


" Initialize plugin system
call plug#end()


let g:ale_linters = {'python': ['flake8']}
let g:alle_python_flake8_options = '--config ~/.config/flake8'
let g:ale_fixers = {
	    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
			\ 'python': ['black', 'isort'],
			\ 'nim': ['nimpretty']
      \}
let g:ale_fix_on_save = 1

let g:deoplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0  " disable autocompletion, because we use deoplete for completion
let g:jedi#use_splits_not_buffers = "right"  " open the go-to function in split, not another buffer
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Theming
syntax enable
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme tender
set noshowmode
