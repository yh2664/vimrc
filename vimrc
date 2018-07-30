"" Install vim plug if it does not exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"" Plug-ins
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim' 
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'sonph/onehalf'
Plug 'altercation/vim-colors-solarized'
Plug 'powerline/powerline'
call plug#end()

set background=dark
colorscheme solarized

"" CtrlP Configs
"  Ignore files in `.gitignore`
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'


"" vim-easy-aligh config
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

 " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" NERDTree Keybind
map <C-n> :NERDTreeToggle<CR>

"" Vim Settings
set nocompatible
set completeopt-=preview
set hlsearch
set number relativenumber
set cursorline
set backspace=2 " make backspace work like most other programs

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

syntax on
