set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
"Plugin 'christoomey/vim-tmux-navigator'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/MatchTagAlways'
Plugin 'tpope/vim-surround'
Plugin 'wikitopian/hardmode'
Plugin 'taglist.vim'
Plugin 'Raimondi/delimitMate'

call vundle#end()
filetype plugin indent on

syntax enable
color Monokai
let mapleader = "\<Space>"
set encoding=utf-8
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
nmap <leader>k :NERDTreeToggle<CR>
nnoremap <leader>, :nohlsearch<CR>
nnoremap <leader>s :mksession!<CR>
set autoread
set tabstop=2
set softtabstop=2
set expandtab
set cursorline 
set wildmenu
set showmatch
set incsearch
set hlsearch
set noswapfile
set shiftwidth=2
set ttyfast
set lazyredraw

" Set quit and write to files shortcuts to <leader>q or <leader>w
nmap <leader>q :q<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>x :xa<CR>

" Set indents and spacing on file (2 spaces)
nnoremap <c-f> gg=G

nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" Shortcut for opening vimrc
map <Leader>v :tabe ~/.vimrc<CR>

autocmd! bufwritepost .vimrc source % 

" Short cut for reloading current file
nnoremap <leader>r :e!<CR>

" Set hybrid number system
set relativenumber
set number

" Map ; to :
nmap ; :

" Enable hardmode by default
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Go to tab by number
noremap <leader>1 :tabprevious<CR>
noremap <leader>2 :tabnext<CR>
noremap <leader>3 :tabm -1<CR>
noremap <leader>4 :tabm +1<CR>

"Add mouse support
set mouse=a

"Past mode for pasting in insert mode
nnoremap <C-P> :set invpaste paste? <CR>

"Smart navigation between vim splits and tmux splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"Airline Configurations
autocmd VimEnter * AirlineToggleWhitespace
let g:airline_theme='molokai'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Syntastic Configurations
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"ctrlP Configurations
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

"NERDTree configurations
let NERDTreeWinSize=25
let NERDTreeMouseMode=2

set laststatus=2
set ttimeoutlen=50
