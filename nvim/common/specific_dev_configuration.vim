" if there is not configuration do not try to load any file
if !isdirectory($NEOVIM_DEV_ENVIRONMENTS_ROOT . '/environments/' . $NEOVIM_DEV_ENVIRONMENT)
  finish
endif

if $NEOVIM_DEV_ENVIRONMENT == 'php'
    source $NEOVIM_DEV_ENVIRONMENTS_ROOT/environments/php/recommended/coc_extensions.vim
    source $NEOVIM_DEV_ENVIRONMENTS_ROOT/environments/php/recommended/indentation.vim
elseif $NEOVIM_DEV_ENVIRONMENT == 'go'
    source $NEOVIM_DEV_ENVIRONMENTS_ROOT/environments/go/recommended/coc_extensions.vim
endif
