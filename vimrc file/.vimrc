" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
 if (has("termguicolors"))
 	set termguicolors
 endif

let g:gruvbox_italic=1
set t_Co=256
syntax enable
"let g:solarized_termcolors=256
set background=dark
set autoindent
set number
colorscheme industry 
set pastetoggle=<F3>
map <F2> :NERDTreeToggle<CR>
map <F4> :tabp<CR>
map <F5> :tabn<CR>
" colorscheme night-owl
