#!/bin/bash

# zsh plugins
if [[ ! -d ./zsh/plugins/powerlevel10k ]]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ./zsh/plugins/powerlevel10k
fi
if [[ ! -d ./zsh/plugins/zsh-syntax-highlighting ]]; then
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ./zsh/plugins/zsh-syntax-highlighting
fi
if [[ ! -d ./zsh/plugins/zsh-autosuggestions ]]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ./zsh/plugins/zsh-autosuggestions
fi
