#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

# Environment Variables
export EDITOR="nvim"
export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME=$HOME/.config
export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons
export ZDOTDIR=~/.config/zsh
export TERMINAL="kitty"
ZSH_THEME="xiong-chiamiov-plus"

source $ZDOTDIR/pluginload.zsh

# User Aliases
#alias dup='sudo zypper refresh && sudo zypper dup && flatpak update && nix-channel --update && nix-env -u --always && brew update && brew upgrade'
alias dup='topgrade -y'
alias hyprlnano='nano ~/.config/hypr/hyprland.conf'
alias vi='nvim'
alias vim='nvim'
alias cd='z'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias dnf='dnf5'

# History
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Autoruns
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"

export PATH=$PATH:/home/roshanstudley/.spicetify

export PATH=$PATH:/home/rstudley/.spicetify

# For Starship Prompt
# eval "$(starship init zsh)"
