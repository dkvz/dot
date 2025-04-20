set autoindent expandtab tabstop=2 shiftwidth=2 smartindent
set linebreak
set scrolloff=8
" Use the awkward tree style for netrw
let g:netrw_liststyle = 3
" Highlight search results + make Ctrl+l clear them
set is hls
nnoremap <C-L> :nohl<CR><C-L>
" Not a good habit for bash vi mode but I don't care.
imap <C-c> <Esc>

" Color scheme will be different in tmux if this is not set:
set background=dark

syntax on
