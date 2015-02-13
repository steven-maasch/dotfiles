" VUNDLE
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'gmarik/Vundle.vim'
"Plugin 'vim-perl/vim-perl'

call vundle#end()

filetype plugin indent on

" NERDTREE
let NERDTreeIgnore = ['^\.git$']
let NERDTreeShowHidden = 1
let NERDTreeChDirMode = 2

" MISC
set number

" SEARCHING
set hlsearch
set ignorecase
set smartcase

" WHITESPACE
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" COLORS
highlight ColorColumn ctermbg=green

" BACKUP
set nobackup
set noswapfile
set nowb

" KEY MAPPING
let mapleader = ","

nnoremap <leader>s :update<CR>
nnoremap <leader>r :!%:p<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

imap jj <Esc>
