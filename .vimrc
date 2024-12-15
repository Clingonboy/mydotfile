source /usr/share/vim/vim90/defaults.vim
set bg=dark "Principalmente per vedere correttamente i colori anche su tmux
set nu rnu
inoremap jk <ESC>
set hidden "Per cambiare buffer anche se il buffer attuale non è salvato.

"-----------------MAPPING----------------------------------------------------"
map <F2> GoDate: <ESC>:read !date<CR>kj

"-----------------INDENTATION------------------------------------------------"
set expandtab
set tabstop=2      " Optional, if you want files with tabs to look the same too.
set shiftwidth=2
set softtabstop=-2 " Use value of shiftwidth
set smarttab       " Always use shiftwidth

"-----------------STATUSLINE------------------------------------------------"
set laststatus=2
highlight MyStatusLineElement guifg=red ctermfg=red
hi StatusLine ctermbg=0 cterm=NONE
set statusline=%F\ %#MyStatusLineElement#%h\ %m\ %r\ %*%=%-14.(%l,%c%V%)\ %P


"-----------------PLUGIN----------------------------------------------------"
call plug#begin()

Plug 'dense-analysis/ale'
Plug 'sainnhe/gruvbox-material'

call plug#end()

set signcolumn=yes
let g:ale_set_signs = 1
let g:ale_sign_info = '✨'
let g:ale_sign_error = '🔥'
let g:ale_sign_warning = '❗️'
let g:ale_sign_hint = '💡'


"-----------------COLOR----------------------------------------------------"
colorscheme gruvbox-material
set cursorline

" base default color changes (gruvbox dark friendly)
hi CursorLineNr ctermfg=yellow
hi CursorLine ctermbg=NONE
hi StatusLine ctermbg=NONE
hi ModeMsg ctermfg=yellow
hi MoreMsg ctermfg=yellow
"hi StatusLine ctermfg=black ctermbg=NONE
hi StatusLineNC ctermfg=yellow ctermbg=NONE
hi Normal ctermbg=NONE
hi Special ctermfg=cyan
"hi LineNr ctermfg=black ctermbg=NONE
hi SpecialKey ctermfg=black ctermbg=NONE
"hi ModeMsg ctermfg=black cterm=NONE ctermbg=NONE
hi MoreMsg ctermfg=black ctermbg=NONE
hi NonText ctermfg=black ctermbg=NONE
hi vimGlobal ctermfg=black ctermbg=NONE
hi ErrorMsg ctermbg=234 ctermfg=darkred cterm=NONE
hi Error ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellBad ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellRare ctermbg=234 ctermfg=darkred cterm=NONE
hi Search ctermbg=236 ctermfg=darkred
hi vimTodo ctermbg=236 ctermfg=darkred
hi Todo ctermbg=236 ctermfg=darkred
hi IncSearch ctermbg=236 cterm=NONE ctermfg=darkred
hi MatchParen ctermbg=236 ctermfg=darkred
hi SignColumn ctermbg=NONE " make gutter less annoying
hi WinBar ctermfg=black ctermbg=NONE cterm=NONE
