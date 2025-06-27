# zdotdir

My personal zsh config based on https://github.com/getandidote/zdotdir.


## Installation

Clone this project to `$ZDOTDIR`, and then make a symlink to `.zshenv`.

```zsh
# clone this project
ZDOTDIR=~/.config/zsh
git clone https://github.com/OnyxAbove/zdotdir $ZDOTDIR

# symlink .zshenv
[[ -f ~/.zshenv ]] && mv -f ~/.zshenv ~/.zshenv.bak
ln -s $ZDOTDIR/.zshenv ~/.zshenv

# symlink .zshrc
[[ -f ~/.zshrc ]] && mv -f ~/.zshrc ~/.zshrc.bak
ln -s $ZDOTDIR/.zshrc ~/.zshrc

# start a new zsh session
zsh
```

[antidote]: https://getantidote.github.io
