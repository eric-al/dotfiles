#!/bin/bash
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/themes/litex.zsh-theme ~/.oh-my-zsh/themes/litex.zsh-theme
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

mkdir -p ~/.oh-my-zsh/plugins/knife-aliases/
ln -sf ~/dotfiles/plugins/knife-aliases/knife-aliases.plugin.zsh  ~/.oh-my-zsh/plugins/knife-aliases/knife-aliases.plugin.zsh
