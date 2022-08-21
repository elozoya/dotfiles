# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# dotfiles root directory
export DOTFILES_ROOT=~/dotfiles

source $DOTFILES_ROOT/zsh/.zshrc_5.8.1_default
source $DOTFILES_ROOT/zsh/.zshrc_alias
source $DOTFILES_ROOT/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source $DOTFILES_ROOT/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $DOTFILES_ROOT/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#585858"

# change history file location
[[ -d ~/.zsh ]] || mkdir ~/.zsh
HISTFILE=~/.zsh/.zsh_history

# Use vim keybindings
# bindkey -v

# this would bind ctrl + space to accept the current suggestion.
# bindkey '^ ' autosuggest-accept
# this would bind ctrl + n to accept the current suggestion.
bindkey '^n' autosuggest-accept

# this would bind ctrl + u to delete everything from the cursor to beginning of the line
bindkey \^U backward-kill-line

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ ! -f $DOTFILES_ROOT/zsh/.p10k.zsh ]] || source $DOTFILES_ROOT/zsh/.p10k.zsh

# add go to the path if it is installed
[ -d "/usr/local/go/bin" ] && export PATH=$PATH:/usr/local/go/bin
