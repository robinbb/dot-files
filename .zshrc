alias dot='git --git-dir="${HOME}"/dot-files --work-tree="${HOME}"'
alias ll='ls -la --color'

# The following lines were added by compinstall
zstyle :compinstall filename '/home/anon/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

export HISTSIZE=1234567
export SAVEHIST=1234567
setopt EXTENDED_HISTORY

# Work around a deficiency in Nix's 'Mosh'.
#
# See if we can do without this.
# export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive

export EDITOR=vim
export TERM='tmux-256color'

eval "$(direnv hook zsh)"
eval "$(ssh-agent)"
