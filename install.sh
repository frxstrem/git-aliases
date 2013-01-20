#!/bin/sh
# install git aliases

echo 'Installing git co'
git config --global	alias.co checkout
echo 'Installing git br'
git config --global	alias.br branch
echo 'Installing git undo'
git config --global	alias.undo 'reset --hard'
echo 'Installing git info'
git config --global	alias.info 'show --stat --pretty=format:'"'"'%C(yellow)%H%Cblue%d%n%Creset%s%n%Cgreen%cr %C(cyan)by %Cred%cn <%ce>%Creset%n%-b%n%n'"'"''
echo 'Installing git lg'
git config --global	alias.lg 'log --graph --date-order --pretty=format:'"'"'%C(yellow)%h%Creset %s %Cblue%d%Creset'"'"''
echo 'Installing git ll'
git config --global	alias.ll 'log --date-order --pretty=format:'"'"'%C(yellow)%h %C(cyan)[%Cgreen%cr%C(cyan) by %Cred%cn%C(cyan)]%Creset %s%Cblue%d%Creset'"'"''
echo 'Installing git changes'
git config --global	alias.changes 'diff --name-status -r'
echo 'Installing git stat'
git config --global	alias.stat 'diff --stat -r'
