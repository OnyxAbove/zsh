#!/bin/zsh

autoload -Uz add-zsh-hook
add-zsh-hook -Uz precmd xterm\_title\_precmd
add-zsh-hook -Uz preexec xterm\_title\_preexec
