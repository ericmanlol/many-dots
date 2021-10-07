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
filetype plugin indent on

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

set modifiable
" Leader Key Mappings {{{
"===============================================================================

" Map leader and localleader key to comma
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","


" <Leader>``: Force quit all
nnoremap <Leader>`` :qa!<cr>

" <Leader>1: Toggle between paste mode
nnoremap <silent> <Leader>1 :set paste!<cr>

" <Leader>2: Toggle Tagbar
nnoremap <silent> <Leader>2 :TagbarToggle<cr>

" <Leader>tab: Toggles NERDTree
nnoremap <silent> <Leader><tab> :NERDTreeToggle<cr>

" <Leader>,: Switch to previous split
nnoremap <Leader>, <C-w>p

" <Leader>p: Copy the full path of the current file to the clipboard
nnoremap <silent> <Leader>p :let @+=expand("%:p")<cr>:echo "Copied current file
      \ path '".expand("%:p")."' to clipboard"<cr>


