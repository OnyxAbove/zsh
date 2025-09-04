#!/bin/zsh
#
# .zshenv - Zsh environment file, loaded always.
#

# NOTE: .zshenv needs to live at ~/.zshenv, not in $ZDOTDIR!

# Set ZDOTDIR if you want to re-home Zsh.
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}
export ZED_WINDOW_DECORATIONS=server
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
export XCURSOR_PATH=$HOME/.icons:$HOME/.local/share/icons/:/usr/share/icons

typeset -U path

# Define the directories you want to prepend
local append_path=(
  $HOME/bin
  $HOME/sbin
  $HOME/.local/bin
  $HOME/.local/sbin
  /opt/homebrew/bin
  /opt/homebrew/sbin
  /opt/local/bin
  /opt/local/sbin
  /usr/local/bin
  /usr/local/sbin
)

# Prepend custom directories (existing ones will be moved to front due to -U)
for dir in ${(Oa)append_path}; do
  if [[ -d $dir ]]; then
    path=($dir $path)
  fi
done

# Remove non-existent directories
path=(${^path}(/N))

# You can use .zprofile to set environment vars for non-login, non-interactive shells.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
