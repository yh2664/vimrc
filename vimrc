"" Install vim plug if it does not exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"" Plug-ins
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/a.vim'
Plug 'junegunn/goyo.vim'
call plug#end()

" setup color scheme
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='soft'
"let g:lightline = {
"      \ 'colorscheme': 'gruvbox',
"      \ }

"" ack.vim configs
" set ack.vim to use ag if possible
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" serach result with 30 rows
let g:ack_qhandler = "botright copen 30"


" Keybindings
nmap <C-p> :Files<CR> " fzf find file 
nmap <C-t> :Tags<CR> " fzf find Tag
nmap <C-n> :NERDTreeToggle<CR> " NERDTree Keybind
nmap <C-f> :Ack! "\b<cword>\b" <CR>" map ackvim serach


"" Vim Settings
set nocompatible
set completeopt-=preview
set hlsearch
set number relativenumber
set cursorline
set backspace=2 " make backspace work like most other programs
set laststatus=2
set ignorecase
set smartcase
" indent setting
set tabstop=4 
set shiftwidth=4 
set noexpandtab
set autoindent

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

syntax on
