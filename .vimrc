set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'         " Shortcuts to comment out multiple lines of files 
Plugin 'kien/ctrlp.vim'                   " Fuzzy file searching in current directory
Plugin 'bling/vim-airline'                " The fancy little line at the bottom of vim
Plugin 'christoomey/vim-tmux-navigator'   " Smart switching between vim splits and tmux panes 
Plugin 'airblade/vim-gitgutter'           " Show unstaged git changes beside the numbers (on the left)
Plugin 'Valloric/MatchTagAlways'          " Highlight end of HTML tags and XML tags
Plugin 'godlygeek/tabular'                " Align text in a tabluar format
Plugin 'tpope/vim-surround'               " Able to change surrounding quotesof strings
Plugin 'taglist.vim'                      " Create a right split which shows all current tags for open file
Plugin 'Raimondi/delimitMate'             " Automatically closes curley brackets, paranethesis, quotes, etc.
Plugin 'flazz/vim-colorschemes'           " Be able to pick and choose any colorscheme at will if you're moody
Plugin 'tpope/vim-rails'                  " East methods to navigate rails files. See https://github.com/tpope/vim-rails
Plugin 'tpope/vim-endwise'                " Automatically ends ruby if, do, while, etc. with ends
Plugin 'tpope/vim-haml'                   " Syntax highlighting for haml
Plugin 'vim-ruby/vim-ruby'                " Syntax hightlighting for ruby
Plugin 'mileszs/ack.vim'                  " Advanced search tool throughout projects/buffers
"Plugin 'Yggdroot/indentLine'
"Plugin 'nathanaelkane/vim-indent-guides' " Provides vertical lines to differeniate tabs (doesn't currently work)
Plugin 'scrooloose/nerdtree.git'         " File drawer navigator that opens on the left
"Plugin 'Valloric/YouCompleteMe'          " Auto-complete in vim for most words
"Plugin 'tpope/vim-obsession'
"Plugin 'dkprice/vim-easygrep'
"Plugin 'pangloss/vim-javascript'
"Plugin 'scrooloose/syntastic'
"Plugin 'wikitopian/hardmode'

call vundle#end()
filetype plugin indent on

syntax enable
syntax sync minlines=256
colorscheme monokai
let mapleader = "\<Space>"
set encoding=utf-8
nmap <leader>k :NERDTreeToggle<CR>
nnoremap <leader>, :nohlsearch<CR>
nnoremap <leader>s :mksession!<CR>
set autoread
set cursorline                    " Highlight line 
set wildmenu                      " Allow command line completion
set wildmode=list:longest,full    " Better file completion
set wildignorecase                " Ignore case on commandline"
set showmatch                     " Show matching brackets
set infercase                     " Adjust completions to match case
set incsearch
set hlsearch
set noswapfile
set ignorecase                    " Ignore case when searching
set smartcase                     " Search will not ignore uppercase
set autoindent                    " Auto indent wherever possible
set smartindent                   " Be smart about it? 
set ruler                         " Allow for a column at line 80 for alignment
set colorcolumn=100                " (See right above)
set shiftwidth=2                  " Shift width is 2
set cpoptions+=$                  " When c in/around any obj, show a $ at the end of the text ob
set virtualedit=all               " Cursor can go anywhere
set laststatus=2                  " Always show status line
set timeoutlen=500                " How long to wait in between leader keys
set tabstop=2                     " Tab are only 2 spaces
set softtabstop=2
set expandtab
set shiftround                    " if at odd number spaces, make >> go to next even
set relativenumber                " Set relative number
set number                        " Set both numbering systems (hybrid)
set ttyfast                       " Set faster scrolling
set lazyredraw                    " Again for fasting scrolling
"set list listchars=tab:\ \ ,trail:·
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Shortcuts to install plugins for vundle
map <Leader>pi :PluginInstall<cr>
map <Leader>pu :PluginInstall!<cr>

" Supress conf error for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Set quit and write to files shortcuts to <CTL s> or <CTL w>
map <leader>q <esc>:q<CR>
map <leader>w <esc>:w<CR>
map <leader>x <esc>:xa<CR>

" Still using arrow keys when in insert mode sometimes
map <Left> <NOP>
map <Right> <NOP>
map <Up> <NOP>
map <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

" Use better search highlighting
nnoremap <silent> n   n:call HLNext(0.3)<cr>
nnoremap <silent> N   N:call HLNext(0.3)<cr>

" Set indents and spacing on file (2 spaces)
nnoremap <c-f> gg=G

" Auto source vimrc
autocmd! bufwritepost .vimrc source %

" Short cut for reloading current file
nnoremap <leader>r :e!<CR>

" this was better when it was :Sexplore...
nnoremap <Leader>s :sp<cr>
nnoremap <Leader>v :vsp<cr>

" Map ; to :
nmap ; :

" Don't cancel visual mode while indenting
vnoremap > >gv
vnoremap < <gv

" Taglist settings
let Tlist_Use_Right_Window = 1
nnoremap <silent> <leader>t :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_WinWidth = 40

" Vim copy to and from clipboard
vnoremap <C-c> "*y
vnoremap <C-p> "*p

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

" Resize vim buffers in accordance to tmux panes
autocmd VimResized * :wincmd =

" Zooming into a vim split within a tmux pane
nnoremap <leader>- :wincmd _<CR>:wincmd \|<CR>
nnoremap <leader>= :wincmd =<CR>

" auto character alignment
map <Leader>tr :Tabularize /=><cr>
map <Leader>te :Tabularize /=<cr>

"Airline Configurations
autocmd VimEnter * AirlineToggleWhitespace
let g:airline_theme='molokai'
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*


" vim indent guide lines plugin configuration
"hi IndentGuidesOdd  ctermbg=lightgrey
"hi IndentGuidesEven ctermbg=darkgrey
"let g:indent_guides_color_change_percent = 10
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"let g:indent_guides_enable_on_vim_startup=1

"Syntastic Configurations
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1

"ctrlP Configurations
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"NERDTree configurations
let NERDTreeWinSize=25
let NERDTreeMouseMode=2
let NERDTreeQuitOnOpen=1

"Ruby syntax highlighting settings (vim-ruby)
:let ruby_operators = 1
:let ruby_space_errors = 1


" YouCompleteMe configurations
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" You completeme tab to complete line
"imap <Tab> <C-P>

" indent line configuration settings
"let g:indentLine_color_term = 239
"let g:indentLine_enabled = 0
"let g:indentLine_char = 'U+E0A3'

" Blink current search item - from Damian Conway 'More Instantly Better Vim'
function! HLNext (blinktime)
  let [bufnum, lnum, col, off] = getpos('.')
  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
  let target_pat = '\c\%#'.@/
  let ring = matchadd('ErrorMsg', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction
