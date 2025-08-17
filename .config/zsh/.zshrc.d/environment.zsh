#!/bin/zsh

# Environment Variables
export EDITOR="nvim"
export ZSH="$HOME/.oh-my-zsh"
export TERMINAL="kitty"
path=(
  $HOME/.spicetify
  ${path[@]}
)
HISTORY_SUBSTRING_SEARCH_FUZZY=1
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=red,fg=#24273a'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=#f4dbd6,fg=#24273a'
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_TIMEOUT=1.5
ZSH_THEME="xiong-chiamiov-plus"

# fzf Catppuccin
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#b7bdf8,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#b7bdf8,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--color=border:#363a4f,label:#cad3f5"

