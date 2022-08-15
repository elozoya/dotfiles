" Custom tab mappings
nnoremap <leader>0 :tabfirst<enter>
nnoremap <leader>$ :tablast<enter>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>h :tabfirst<enter>
nnoremap <leader>l :tablast<enter>

" <leader>j & <leader>k are being used by coc
nnoremap <leader>J gT
nnoremap <leader>K gt

" Vim close all tabs to the right
" https://superuser.com/questions/555011/vim-close-all-tabs-to-the-right
command! CloseAllTabsToTheRight .+1,$tabdo :tabc

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Custom buffer mappings
nnoremap <leader>bf :bf<enter>
nnoremap <leader>bl :bl<enter>
nnoremap <leader>bn :bn<enter>
nnoremap <leader>bp :bp<enter>
nnoremap <leader>bd :bd<enter>
nnoremap <leader>qq :bd<enter>

" close all buffers except current one
" https://tech.serhatteker.com/post/2020-06/close-all-buffers-but-current-in-vim/
command! Bufonly execute '%bdelete|edit#|bdelete#'
