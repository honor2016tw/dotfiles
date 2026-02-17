#!/usr/bin/env bash
set -ux
git clone https://github.com/honor2016tw/dotfiles.git --bare $HOME/.dotfiles/.git
git init $HOME/.dotfiles

dotfiles() {
  git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME $@
}

dotfiles checkout

dotfiles config status.showUntrackedFiles no
dotfiles config branch.main.remote origin
dotfiles config branch.main.merge refs/heads/main
