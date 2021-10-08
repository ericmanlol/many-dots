" https://github.com/junegunn/fzf.vim#status-line-of-terminal-buffer
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
