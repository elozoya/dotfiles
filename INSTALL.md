# Install

## Pre-requirements

- For neovim configuration vim-plug must be installed

## Install dotfiles

```sh
  curl -s https://raw.githubusercontent.com/elozoya/dotfiles/master/install.sh | bash
```

```sh
  wget -qO - https://raw.githubusercontent.com/elozoya/dotfiles/master/install.sh | bash
```

## Install dotfiles after cloning the repository

```sh
  git clone https://github.com/elozoya/dotfiles
  cd dotfiles
  ./install.sh
```

## Install dotfiles manually

1. Clone repository
```sh
  git clone --depth=1 https://github.com/elozoya/dotfiles ~/dotfiles
```

2. Install zsh configuration
```sh
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/dotfiles/zsh/plugins/powerlevel10k
  git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/dotfiles/zsh/plugins/zsh-syntax-highlighting
  git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/dotfiles/zsh/plugins/zsh-autosuggestions
  ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

3. Install neovim configuration
```sh
  mkdir -p ~/.config/nvim
  ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
```

4. Install tmux configuration
```sh
  ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

5. Install git configuration
```sh
  ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
```
