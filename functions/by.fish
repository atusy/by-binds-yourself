set -g ___by_commandline_prefix

function by
  set ___by_commandline_prefix $argv ""
end

function ___by --on-event fish_prompt
  commandline --replace "$___by_commandline_prefix"
end

