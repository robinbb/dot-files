eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(ssh-agent)"

alias dot='git --git-dir="${HOME}"/dot-files --work-tree="${HOME}"'
alias ll='ls -la --color'
alias vi=nvim
alias vim=nvim

export TERM='tmux-256color'

# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/anon/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
