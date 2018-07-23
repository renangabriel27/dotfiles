call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jwalton512/vim-blade'
  Plug 'posva/vim-vue'
  Plug 'airblade/vim-gitgutter'
  Plug 'mattn/emmet-vim'
  Plug 'bling/vim-airline'
  Plug 'tpope/vim-commentary'
  Plug 'majutsushi/tagbar' 
  Plug 'tmhedberg/matchit'
  Plug 'tpope/vim-dispatch'             "| Optional
  Plug 'tpope/vim-projectionist'        "|
  Plug 'roxma/nvim-completion-manager'  "|
  Plug 'noahfrederick/vim-composer'     "|
  Plug 'noahfrederick/vim-laravel'
  Plug 'wakatime/vim-wakatime'
  Plug 'mileszs/ack.vim'
call plug#end()

syntax on
colorscheme onedark

set number
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set hlsearch

set cursorline
set showmatch
set lazyredraw
set incsearch
set hlsearch

map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

nnoremap j gj
nnoremap k gk

nnoremap B ^
nnoremap E $

nnoremap <c-p> <cmd-t>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nmap <F8> :TagbarToggle<CR>
let g:vue_disable_pre_processors = 1

autocmd FileType vue syntax sync fromstart
