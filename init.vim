" Note that the plugin file location might be different. You might want to recheck it manually.
call plug#begin("~/.config/nvim/plugged")
  " Plugin Section
call plug#end()
" Everything after this line will be the config section


call plug#begin("~/.config/nvim/plugged")
  Plug 'morhetz/gruvbox'
  "File explorer"
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin' 
  Plug 'ryanoasis/vim-devicons'
  "Status line
  Plug 'itchyny/lightline.vim'
call plug#end()

" Color Config
if (has("termguicolors"))
 set termguicolors
endif
set background=dark
colorscheme gruvbox

" Lightline
let g:lightline = {
  \     'colorscheme': 'powerlineish',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

" neovim config
syntax enable
syntax on
set number

" spacing / indents
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab

" case insensitive search
set ignorecase
set smartcase
"search improvement
set incsearch
set hlsearch

" turn backup off
set nobackup
set nowritebackup
set noswapfile

"auto read when outside changes
set autoread

"allow change buffer without saving it first
set hidden

set title
