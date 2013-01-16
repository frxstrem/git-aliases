# Git aliases

### `git co`

Shorthand for `git checkout`.

```sh
git config --global alias.co checkout
```

### `git br`

Shorthand for `git branch`

```sh
git config --global alias.br branch
```

### `git undo`

Shorthand for `git reset --hard`

```sh
git config --global alias.undo 'reset --hard'
```

### `git info`

Show a nicely formatted summary of an object.

```sh
git config --global alias.info "show --stat --pretty=format:'%C(yellow)%H%Cblue%d%n%Creset%s%n%Cgreen%cr %C(cyan)by %Cred%cn%Creset%n%-b%n%n'"
```

### `git lg`

`git log` with a graph.

```sh
git config --global alias.lg "log --graph --date-order --pretty=format:'%C(yellow)%h%Creset %s %Cblue%d%Creset'"
```

### `git ll`

`git log` with one line per commit and detailed information.

```sh
git config --global alias.ll "log --date-order --pretty=format:'%C(yellow)%h %C(cyan)[%Cgreen%cr%C(cyan) by %Cred%cn%C(cyan)]%Creset %s %Cblue%d%Creset'"
```

### `git changes`

`git diff` with file list.

```sh
git config --global alias.changes 'diff --name-status -r'
```

### `git diffstat`

`git diff` with file list and statistics.

```sh
git config --global alias.diffstat 'diff --stat -r'
```