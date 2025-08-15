#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

source $ZDOTDIR/.aliases
source $ZDOTDIR/.environment
source $ZDOTDIR/.antidote/antidote.zsh

antidote load

# History
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_ALL_DUPS
bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

bindkey '^H' kill-whole-line

# Autoruns
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# For Starship Prompt
# eval "$(starship init zsh)"

source <(fzf --zsh)
