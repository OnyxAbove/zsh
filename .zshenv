#!/bin/zsh
#
# .zshenv - Zsh environment file, loaded always.
#

# NOTE: .zshenv needs to live at ~/.zshenv, not in $ZDOTDIR!

# Set ZDOTDIR if you want to re-home Zsh.
export ZED_WINDOW_DECORATIONS=server
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
export XCURSOR_PATH=$HOME/.icons:$HOME/.local/share/icons/:/usr/share/icons
ZDOTDIR=$HOME

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
