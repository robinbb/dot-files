alias dot = git --git-dir ($env.HOME | path join "dot-files") --work-tree $env.HOME
alias fg = job unfreeze
alias gs = git status
alias l = ls -a
alias ll = ls -al

$env.config.show_banner = false

$env.EDITOR = "nvim"
$env.TERM = "tmux-256color"
$env.config.buffer_editor = "nvim"

# Direnv

use std/config *

# Initialize the PWD hook as an empty list if it doesn't exist
$env.config.hooks.env_change.PWD = $env.config.hooks.env_change.PWD? | default []

$env.config.hooks.env_change.PWD ++= [{||
  if (which direnv | is-empty) {
    # If direnv isn't installed, do nothing
    return
  }

  direnv export json | from json | default {} | load-env
  # If direnv changes the PATH, it will become a string and we need to re-convert it to a list
  $env.PATH = do (env-conversions).path.from_string $env.PATH
}]
