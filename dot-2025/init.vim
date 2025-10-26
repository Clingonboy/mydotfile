colorscheme habamax
highlight Normal guibg=NONE ctermbg=NONE
highlight NormalNC guibg=NONE ctermbg=NONE

inoremap jk <ESC>
" Ho disabilitato il mouse cosi con xterm posso selezionare il testo
" col mouse per copiarlo
set mouse=a

" Imposta spaziatura delle indentazioni
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

" Imposta il colore di sfondo della statusline per la finestra attiva
" e il colore del testo in giallo
highlight StatusLine guibg=None guifg=#5f5f5f "il giallo sarebbe #FFFF00
" Imposta il colore di sfondo della statusline per la finestra non attiva
" e il colore del testo in giallo
highlight StatusLineNC guibg=None guifg=#5f5f5f

" Imposta textwidth=78 solo per i file Markdown
augroup markdown_textwidth
  autocmd!
  autocmd FileType markdown setlocal textwidth=78
  autocmd FileType markdown setlocal colorcolumn=79
  autocmd FileType markdown highlight ColorColumn ctermbg=darkgray guibg=#404040
augroup END
