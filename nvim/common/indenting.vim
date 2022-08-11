set listchars=tab:▸\ ,trail:·,eol:$
set list

" https://learnvimscriptthehardway.stevelosh.com/chapters/14.html
augroup custom_indenting
    autocmd!
    autocmd FileType * set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab
    " autocmd FileType php set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab
augroup END

" Fix auto-indentation for YAML files
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END
