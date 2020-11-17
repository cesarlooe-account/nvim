let mapleader=" "
"nnoremap <Space> <Nop>

" Mejor Indentacion
vnoremap < <gv
vnoremap > >gv

" Para escapar del modo insert
inoremap jk <Esc>
inoremap kj <Esc>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>
