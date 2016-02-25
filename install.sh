#!/bin/sh
# install git aliases

echo 'Installing git co'
git config --global	alias.co checkout
echo 'Installing git br'
git config --global	alias.br branch
echo 'Installing git undo'
git config --global	alias.undo 'reset --hard'
echo 'Installing git info'
git config --global	alias.info 'show --stat --pretty=format:'"'"'%C(yellow)%H%Cblue%d%n%Creset%B%Cgreen%cr %C(cyan)by %Cred%an <%ae>%Creset%n%C(yellow)PGP: %C(bold)[%G?] %GS%Creset%n'"'"''
echo 'Installing git lg'
git config --global	alias.lg 'log --graph --date-order --pretty=format:'"'"'%C(yellow)%h %C(bold)%G?%Creset %s %Cblue%d%Creset'"'"''
echo 'Installing git ll'
git config --global	alias.ll 'log --date-order --pretty=format:'"'"'%C(yellow)%h %C(bold)%G? %Creset%C(cyan)[%Cgreen%ad%C(cyan) by %Cred%an%C(cyan)]%Creset %s%Cblue%d%Creset'"'"' --date=format:'"'"'%e %b %Y %H:%M'"'"''
echo 'Installing git changes'
git config --global	alias.changes 'diff --name-status -r'
echo 'Installing git stat'
git config --global	alias.stat 'diff --stat -r'
echo 'Installing git squash'
git config --global	alias.squash '!f() { [ $# -gt 0 ] || { false; exit; }; git reset --soft \"$1\" && { shift; git commit \"$@\"; }; }; f'
