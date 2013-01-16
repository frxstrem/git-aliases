#!/bin/sh

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.undo 'reset --hard'
git config --global alias.info "show --stat --pretty=format:'%C(yellow)%H%Cblue%d%n%Creset%s%n%Cgreen%cr %C(cyan)by %Cred%cn%Creset%n%-b%n%n'"
git config --global alias.lg "log --graph --date-order --pretty=format:'%C(yellow)%h%Creset %s %Cblue%d%Creset'"
git config --global alias.ll "log --date-order --pretty=format:'%C(yellow)%h %C(cyan)[%Cgreen%cr%C(cyan) by %Cred%cn%C(cyan)]%Creset %s %Cblue%d%Creset'"
git config --global alias.changes 'diff --name-status -r'
git config --global alias.diffstat 'diff --stat -r'