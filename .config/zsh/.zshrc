#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

# Environment Variables
export EDITOR="nvim"
export ZSH="$HOME/.oh-my-zsh"
export TERMINAL="kitty"
ZSH_THEME="xiong-chiamiov-plus"

# fzf Catppuccin
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#b7bdf8,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#b7bdf8,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--color=border:#363a4f,label:#cad3f5"

source $ZDOTDIR/pluginload.zsh

# History
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Autoruns
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# For Starship Prompt
# eval "$(starship init zsh)"

export PATH=$PATH:/home/rstudley/.spicetify

source <(fzf --zsh)
