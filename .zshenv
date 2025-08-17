#!/bin/zsh
#
# .zshenv - Zsh environment file, loaded always.
#

# NOTE: .zshenv needs to live at ~/.zshenv, not in $ZDOTDIR!

# Set ZDOTDIR if you want to re-home Zsh.
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}
export ZED_WINDOW_DECORATIONS=server
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
export XCURSOR_PATH=$HOME/.icons:$HOME/.local/share/icons/:/usr/share/icons
export PATH=/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/bin:/home/linuxbrew/.linuxbrew/b/home/linuxbrew/.linuxbrew/sbin:$PATH

# You can use .zprofile to set environment vars for non-login, non-interactive shells.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
