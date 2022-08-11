if $NEOVIM_DEV_ENVIRONMENT == 'php'
    source $NEOVIM_DEV_ENVIRONMENTS_ROOT/environments/php/coc_extensions.vim
    source $NEOVIM_DEV_ENVIRONMENTS_ROOT/environments/php/indentation.vim
elseif $NEOVIM_DEV_ENVIRONMENT == 'go'
    source $NEOVIM_DEV_ENVIRONMENTS_ROOT/environments/go/coc_extensions.vim
endif
