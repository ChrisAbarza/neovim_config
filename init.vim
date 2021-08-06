" para sincronizar vim con neovim, atento a fila 4
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath=&runtimepath
" source C:\Program Files (x86)\Vim\_vimrc

language en_US

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

" dentro del call se instalan los plugins
call plug#begin('~/.vim/plugged')
" temas
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'https://github.com/tpope/vim-fugitive'

call plug#end()

" configuracion de plugins
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1

" se define el tecla lider [espacio]
let mapleader=" "

" mapeo de teclas
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" source para poder usar clipboard de  windows
source $VIMRUNTIME/mswin.vim