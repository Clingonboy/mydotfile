" Ultima modifica 03 Maggio 2024
source /usr/local/share/vim/vim91/defaults.vim
set nu rnu
set hidden

" GESTIONE DEL CURSORE
" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
if &term == 'xterm-256color' || &term == 'screen-256color'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif

if exists('$TMUX')
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
endif

colorscheme desert
hi Normal guibg=NONE ctermbg=NONE

" MAPPING
set timeoutlen=200
inoremap jk <Esc>
nnoremap <space>n :bn<cr>

" INDENTATION
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set tabstop=2

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_id = win_getid()
          exec expl_win_num . 'windo close'
          let prev_win_num = win_id2win(cur_win_id)
          if prev_win_num != 0
              exec prev_win_num . 'wincmd w'
          endif
      endif
      unlet t:expl_buf_num
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
