
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

" <Leader>w: Switch to previous split
nnoremap <Leader>w <C-w>p

" <Leader>,: Switch to next split
nnoremap <Leader>, <C-w>w

" <Leader>p: Copy the full path of the current file to the clipboard
nnoremap <silent> <Leader>p :let @+=expand("%:p")<cr>:echo "Copied current file
      \ path '".expand("%:p")."' to clipboard"<cr>

" <Leader>f: find file under current directory
nnoremap <silent> <leader>f :FZF<cr>

" <Leader>F: find file under home directory
nnoremap <silent> <leader>F :FZF ~<cr>

" <Leader>a: ag lol 
nnoremap <silent> <leader>a :Ag<cr>

" <Leader>r: reload vim config 
nnoremap <silent> <leader>r :source $MYVIMRC<cr>

" <Leader>e: edit vim config 
nnoremap <silent> <leader>e :e $MYVIMRC<cr>

" <Leader>b: get some buffers, always a good thing  
nnoremap <silent> <leader><space> :Buffers<cr>


