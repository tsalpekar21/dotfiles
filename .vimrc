set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
"Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'taglist.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

syntax enable
color dracula
inoremap jk <ESC>
let mapleader = "\<Space>"
set encoding=utf-8
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
nmap <leader>k :e.<cr>
nnoremap <leader>, :nohlsearch<CR>
nnoremap <leader>s :mksession!<CR>
set autoread
set tabstop=2
set softtabstop=2
set expandtab
set number
set cursorline 
set wildmenu
set showmatch
set incsearch
set hlsearch
set noswapfile

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nnoremap <C-P> :set invpaste paste? <CR>


nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:airline_theme='molokai'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:netrw_liststyle=3
set laststatus=2
set ttimeoutlen=50
