typeset -g ___by_commandline_prefix=""

function by() {
  ___by_commandline_prefix="$*"
}

function ___by() {
  if [[ -n "$___by_commandline_prefix" ]]; then
    BUFFER="$___by_commandline_prefix "
    CURSOR=$#BUFFER
  fi
}

zle -N zle-line-init ___by
