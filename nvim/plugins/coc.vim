function Plugin_loaded(plugin)
    return isdirectory(g:plug_home . "/" . a:plugin) && index(keys(g:plugs), a:plugin) >= 0
endfunction

if Plugin_loaded("coc.nvim")
    source $HOME/dotfiles/nvim/plugins/coc_v0.0.82_default.vim
endif

" extensions
let g:coc_global_extensions = [
  \"coc-pairs",
  \"coc-ultisnips",
  \"coc-fzf-preview",
  \"coc-prettier",
  \"coc-eslint",
  \"coc-json",
  \"coc-tsserver",
\]
