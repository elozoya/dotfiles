" Plugs for especific programming languages
if $NEOVIM_DEV_ENVIRONMENT == 'php'
    source $NEOVIM_DEV_ENVIRONMENTS_ROOT/environments/php/plugs.vim
elseif $NEOVIM_DEV_ENVIRONMENT == 'go'
    source $NEOVIM_DEV_ENVIRONMENTS_ROOT/environments/go/plugs.vim
endif
