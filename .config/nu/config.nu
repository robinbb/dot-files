alias dot = git --git-dir ($env.HOME | path join "dot-files") --work-tree $env.HOME
alias fg = job unfreeze
alias gs = git status
alias l = ls -a
alias ll = ls -al

# Work around a deficiency in Nix's 'Mosh'.
#
# See if we can do without this.
# export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive

$env.EDITOR = "vim"
$env.TERM = "tmux-256color"

# $env.config.hooks.env_change.PWD = (
#   $env.config.hooks.env_change.PWD | append { || if (which direnv | is-empty) { return } direnv export json | from json | default {} | load-env }
# 
^ssh-agent -c
    | lines
    | first 2
    | parse "setenv {name} {value};"
    | transpose -r
    | into record
    | load-env
