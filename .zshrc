#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

# Source anything in .zshrc.d.
for _rc in ${ZDOTDIR:-$HOME}/.zshrc.d/*.zsh; do
  # Ignore tilde files.
  if [[ $_rc:t != '~'* ]]; then
    source "$_rc"
  fi
done
unset _rc

ZFUNCDIR=${ZDOTDIR:-$HOME}/.zfunctions
fpath=($ZFUNCDIR $fpath)

# History
HISTFILE=$ZDOTDIR/.zsh_history
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
