#!/bin/bash

INSTALL_PATH=~/dotfiles

# 1. Download
if [ ! -d $INSTALL_PATH ]; then
  git clone --depth=1 https://github.com/elozoya/dotfiles $INSTALL_PATH
else
  # echo "$INSTALL_PATH already exists"
  if [ ! -f $INSTALL_PATH/zsh/.zshrc ]; then
    echo "$INSTALL_PATH/zsh/.zshrc file not found so it cannot be installed"
    exit 1
  elif [ ! -f $INSTALL_PATH/nvim/init.vim ]; then
    echo "$INSTALL_PATH/nvim/init.vim file not found so it cannot be installed"
    exit 1
  elif [ ! -f $INSTALL_PATH/tmux/.tmux.conf ]; then
    echo "$INSTALL_PATH/tmux/.tmux.conf file not found so it cannot be installed"
    exit 1
  elif [ ! -f $INSTALL_PATH/git/.gitconfig ]; then
    echo "$INSTALL_PATH/git/.gitconfig file not found so it cannot be installed"
    exit 1
  fi
fi

# 2. Install zsh configuration
if [ ! -d $INSTALL_PATH/zsh/plugins/powerlevel10k ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $INSTALL_PATH/zsh/plugins/powerlevel10k
fi

if [ ! -d $INSTALL_PATH/zsh/plugins/zsh-syntax-highlighting ]; then
  git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git $INSTALL_PATH/zsh/plugins/zsh-syntax-highlighting
fi

if [ ! -d $INSTALL_PATH/zsh/plugins/zsh-autosuggestions ]; then
  git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $INSTALL_PATH/zsh/plugins/zsh-autosuggestions
fi

if [ ! -f ~/.zshrc ]; then
  ln -s $INSTALL_PATH/zsh/.zshrc ~/.zshrc
else
  echo "zsh configuration could not be installed because there is already a ~/.zshrc"
fi

# 3. Install neovim configuration
[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
if [ ! -f ~/.config/nvim/init.vim ]; then
  ln -s $INSTALL_PATH/nvim/init.vim ~/.config/nvim/init.vim
else
  echo "neovim configuration could not be installed because there is already a ~/.config/nvim/init.vim"
fi

# 4. Install tmux configuration
if [ ! -f ~/.tmux.conf ]; then
  ln -s $INSTALL_PATH/tmux/.tmux.conf ~/.tmux.conf
else
  echo "tmux configuration could not be installed because there is already a ~/.tmux.conf"
fi

# 5. Install git configuration
if [ ! -f ~/.gitconfig ]; then
  ln -s $INSTALL_PATH/git/.gitconfig ~/.gitconfig
else
  echo "git configuration could not be installed because there is already a ~/.gitconfig"
fi

# Install vim plugs
# if the directory ~/.vim/plugged does not exist
# or if the ~/.vim/plugged is empty
if ([ ! -d ~/.vim/plugged ] || [ -z "$(ls -A ~/.vim/plugged)" ])
then
    echo "Installing vim plugs ..."
    if DOTFILES_ROOT=$INSTALL_PATH nvim --headless +PlugInstall +qall; then
      echo "vim plugs installed"
    else
      echo "vim plugs could not be installed"
    fi
fi
