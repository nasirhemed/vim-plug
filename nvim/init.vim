call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'

call plug#end()

set termguicolors
let g:gruvbox_italic=1
set t_Co=256
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set colorcolumn=80
set autoindent
set number
set pastetoggle=<F3>
map <F2> :NERDTreeToggle<CR>
map <F4> :tabp<CR>
map <F5> :tabn<CR>
