" trova aiuto qui: https://www.youtube.com/watch?v=n9k9scbTuvQ
"

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set cmdheight=2
set colorcolumn=80
set wildignore+=**/node_modules/** "dont serch on node_modules folder"
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'justmao945/vim-clang'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" file con le configurazione per i plugin
source ~/.config/nvim/cocsetup.vim
source ~/.config/nvim/airline.vim
" --- EMMET CONFIG ---
let g:user_emmet_leader_key=','

" --- NETRW CONFIGURATION ---
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25


colorscheme gruvbox
set background=dark

"key binding
let mapleader = "\<Space>"
nnoremap <leader>t :tabNext<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>dd :bdelete<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
"key binding for chenge buffer
nnoremap <leader>n :bNext<CR>
nnoremap <leader>pp :bprevious<CR>
" coc-explorer
nnoremap <leader>e :CocCommand explorer<CR>
" tagbar
nnoremap <F8> :TagbarToggle<CR>
