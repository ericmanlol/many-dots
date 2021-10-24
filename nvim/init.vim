if has('vim_starting')
  set nocompatible               " Be iMproved
endif

let g:vim_home = get(g:, 'vim_home', expand('~/.config/nvim/'))

"---- vim-plug setup  ----
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
  let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
  let curl_exists=expand('curl')
endif

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif
"-------- end vim-plug setup ----


" Color Config
if (has("termguicolors"))
 set termguicolors
endif
set background=dark

call plug#begin("~/.config/nvim/plugged")
  Plug 'morhetz/gruvbox'
  "File explorer"
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin' 
  Plug 'ryanoasis/vim-devicons'
  "Status line
  Plug 'itchyny/lightline.vim'
  " fzf & vim-rooter
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  " tab bar
  Plug 'kyazdani42/nvim-web-devicons'
  "Plug 'romgrk/barbar.nvim'
  "Comment powers
  Plug 'preservim/nerdcommenter'
call plug#end()


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

set splitbelow
set splitright

" Load all vim configs
let config_list = [
      \ 'config.vim',
      \ 'autocmd.vim',
      \ 'commands.vim',
      \ 'mappings.vim',
      \ 'plugin_settings/*.vim'
      \]
for files in config_list
  for f in glob(g:vim_home.files, 1, 1)
    exec 'source' f
  endfor
endfor

