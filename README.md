# `by` binds yourself for repeating commandline buffer

Inspired by <https://github.com/mchav/with>, the program prefixing for continuous workflow using a single tool.

For example, `by git` binds `git` commands so that you no longer retype `git` every time.

```sh
$ by git
$ git
# ^-- appears automatically to make subsequent git workflows

$ git status
$ git add README.md
$ git commit -m "add README.md"
```

Unbind by `by` without arguments:

```sh
$ by
$
```

Note that the bounded commandline buffer is still a normal commandline buffer.
You still have chance to modify it before execution.

## Installation

Supported shells: zsh, fish

### zsh

```zsh
source by.zsh
```

### fish

#### Plugin Manager

##### [fisher](https://github.com/jorgebucaran/fisher)

```fish
fisher install atusy/by-binds-yourself
```

##### [pez](https://github.com/tetzng/pez)

```fish
pez install atusy/by-binds-yourself
```

#### Manual

```fish
git clone https://github.com/atusy/by-binds-yourself.git
cd by-binds-yourself
source by.fish
```

## Why `by`?

### To bind without breaking native shell features

completions, history, and so on

```sh
# completion
$ by git
$ git ch<TAB>
```

### To bind environment variables without exporting

```sh
$ BAR="$(cat file)"
$ by 'FOO="$BAR"'
```

### To bind buffer in a modifiable way

```sh
$ by gcc -o output input.c
$ gcc -o output input.c
$ gcc -o output input.c
$ gcc -o YET_ANOTHER_OUTPUT input.c
# The bind is just a normal buffer that can be modified
```

