#!/bin/bash
if [ -z $1 ]; then
    echo "Usage: $0 <user>@<host>"
    exit 1
fi

echo "--- Rsyncing dotfiles"
rsync -ave ssh --exclude '.git' ~/dotfiles $1:~/
echo "--- Rsyncing .oh-my-zsh"
rsync -ave ssh --exclude '.git' ~/.oh-my-zsh $1:~/

echo "--- Running dotfiles/deploy.sh"
ssh -t $1 "bash ~/dotfiles/deploy.sh"
