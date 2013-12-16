# Git aliases

# `git co`

Shorthand for `git checkout`


```sh
git config --global alias.co checkout
```

# `git br`

Shorthand for `git branch`


```sh
git config --global alias.br branch
```

# `git undo`

Shorthand for `git reset --hard`


```sh
git config --global alias.undo 'reset --hard'
```

# `git info`

Show a nicely formatted summary of an object


```sh
git config --global alias.info 'show --stat --pretty=format:'"'"'%C(yellow)%H%Cblue%d%n%Creset%s%n%Cgreen%cr %C(cyan)by %Cred%an <%ae>%Creset%n%-b%n%n'"'"''
```

# `git lg`

`git log` with a tree graph


```sh
git config --global alias.lg 'log --graph --date-order --pretty=format:'"'"'%C(yellow)%h%Creset %s %Cblue%d%Creset'"'"''
```

# `git ll`

`git log` with detailed oneline summary


```sh
git config --global alias.ll 'log --date-order --pretty=format:'"'"'%C(yellow)%h %C(cyan)[%Cgreen%cr%C(cyan) by %Cred%an%C(cyan)]%Creset %s%Cblue%d%Creset'"'"''
```

# `git changes`

Show list of changed files


```sh
git config --global alias.changes 'diff --name-status -r'
```

# `git stat`

Show file change stats


```sh
git config --global alias.stat 'diff --stat -r'
```

# `git squash`

Squash multiple commits into one


```sh
git config --global alias.squash '!f() { [ $# -gt 0 ] || { false; exit; }; git reset --soft "$1" && { shift; git commit "$@"; }; }; f'
```

