alias dot = git --git-dir ($env.HOME | path join "dot-files") --work-tree $env.HOME
alias fg = job unfreeze
alias gs = git status
alias l = ls -a
alias ll = ls -al

$env.EDITOR = "vim"
$env.TERM = "tmux-256color"
