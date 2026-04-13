alias dot='git --git-dir="${HOME}"/dot-files --work-tree="${HOME}"'
alias ll='ls -la --color'
alias gs='git status'
alias gd='git diff -pwu'

zstyle :compinstall filename ~/.zshrc
autoload -Uz compinit
compinit

export HISTSIZE=1234567
export SAVEHIST=1234567
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY      # write to history file immediately
setopt NO_SHARE_HISTORY        # but don't read other instances' history live

export EDITOR=nvim
export TERM='tmux-256color'

eval "$(direnv hook zsh)"
eval "$(ssh-agent)"
