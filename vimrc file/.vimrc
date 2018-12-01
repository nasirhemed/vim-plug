call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'morhetz/gruvbox'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'tpope/vim-fugitive'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'wesQ3/vim-windowswap'
call plug#end()

" ====================== FOR ONEDARK ==================
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" ==========================================================
"set termguicolors
let g:gruvbox_italic=1
set t_Co=256
syntax enable
let g:solarized_termcolors=256
set background=dark
"colorscheme onedark
colorscheme gruvbox
set autoread " detect when a file is changed
set textwidth=120
set colorcolumn=100
set laststatus=2
set autoindent
" edit ~/.config/nvim/init.vim
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
set number
set pastetoggle=<F3>
map <F2> :NERDTreeToggle<CR>
map <F4> :tabp<CR>
map <F5> :tabn<CR>
nnoremap <F9> :set hlsearch!<CR>

    set t_Co=256
    "colorscheme gruvbox
    set background=dark
    syntax on
"================Spaces and Tabs==========="
    set tabstop=4
    set softtabstop=4
    set expandtab
    set shiftwidth=4
"==================Scrolling==============="
    nnoremap <C-e> 3<C-e>
    nnoremap <C-y> 3<C-y>
"==================UI Config==============="
    set number
    set showcmd
    set cursorline
    filetype indent on
    set showmatch
    set laststatus=2
"==================Searching================"
    set incsearch
    set hlsearch
    :hi Search ctermbg=3 ctermfg=6

"==================FZF======================"
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
