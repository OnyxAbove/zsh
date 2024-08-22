#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

# Environment Variables
export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME=$HOME/.config
export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons
ZSH_THEME="xiong-chiamiov-plus"

# Zsh options.
setopt extended_glob

# Autoload functions you might want to use with antidote.
ZFUNCDIR=${ZFUNCDIR:-$ZDOTDIR/functions}
fpath=($ZFUNCDIR $fpath)
autoload -Uz $fpath[1]/*(.:t)

# Source zstyles you might use with antidote.
[[ -e ${ZDOTDIR:-~}/.zstyles ]] && source ${ZDOTDIR:-~}/.zstyles

# Clone antidote if necessary.
[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

# Create an amazing Zsh config using antidote plugins.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# User Aliases
alias dup='sudo zypper refresh && sudo zypper dup && flatpak update && nix-channel --update && nix-env --upgrade && brew update && brew upgrade'
alias hyprlnano='nano ~/.config/hypr/hyprland.conf'
alias vi='nvim'
alias vim='nvim'
alias cd='z'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

# History
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

#Autoruns
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"
