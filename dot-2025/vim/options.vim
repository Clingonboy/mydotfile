set number
set relativenumber
set laststatus=2

filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

syntax on

set hidden


" Miglioramento like a pro
let loaded_matchparen = 1
set noshowmatch
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/

" Imposta textwidth=78 solo per i file Markdown
augroup markdown_textwidth
  autocmd!
  autocmd FileType markdown setlocal textwidth=78
  autocmd FileType markdown setlocal colorcolumn=79
  autocmd FileType markdown highlight ColorColumn ctermbg=darkgray guibg=#404040
augroup END

set timeoutlen=300  " Timeout per mappature (default 1000ms)
set ttimeoutlen=10  " Timeout per codici terminale (default -1)
