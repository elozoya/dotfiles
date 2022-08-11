" Plugs
call plug#begin('~/.vim/plugged')
" Plugs for every programming language
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } | Plug 'junegunn/fzf.vim'
Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'kana/vim-textobj-user' | Plug 'sgur/vim-textobj-parameter'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'

" File explorer plug
" Plug 'scrooloose/nerdtree'
Plug 'kyazdani42/nvim-web-devicons' | Plug 'kyazdani42/nvim-tree.lua'

" Themes plugs
Plug 'dracula/vim', { 'as': 'dracula' }

" Plugs for especific programming languages
source $DOTFILES_ROOT/nvim/common/specific_dev_plugs.vim
call plug#end()

"main
set inccommand=nosplit " highlight search while typing %s command https://github.com/neovim/neovim/issues/12308
set number relativenumber
let mapleader = " " " map leader to Space

" Source config files
source $DOTFILES_ROOT/nvim/common/theme.vim
source $DOTFILES_ROOT/nvim/common/indenting.vim
source $DOTFILES_ROOT/nvim/common/mappings.vim
source $DOTFILES_ROOT/nvim/plugins/coc.vim
source $DOTFILES_ROOT/nvim/plugins/vim_fugitive.vim
source $DOTFILES_ROOT/nvim/plugins/vim_airline.vim
source $DOTFILES_ROOT/nvim/plugins/fzf.vim
source $DOTFILES_ROOT/nvim/plugins/ack.vim
" source $DOTFILES_ROOT/nvim/plugins/nerdtree.vim
luafile $DOTFILES_ROOT/nvim/plugins/nvim_tree.lua
source $DOTFILES_ROOT/nvim/plugins/ultisnips.vim
source $DOTFILES_ROOT/nvim/plugins/vim_closetag.vim
source $DOTFILES_ROOT/nvim/plugins/vim_gitgutter.vim

" Configuration for especific programming languages
source $DOTFILES_ROOT/nvim/common/specific_dev_configuration.vim
