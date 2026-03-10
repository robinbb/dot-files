# dot-files

Version-control dot-files using Git worktrees and a Zsh alias.

<https://github.com/robinbb/dot-files>

Install by executing the following:

```sh
cd
DOTFILES="$HOME"/dot-files
if [ ! -e "$DOTFILES" ]; then
  git clone --bare https://github.com/robinbb/dot-files.git "$DOTFILES"
fi
alias dot="git --git-dir="${DOTFILES}" --work-tree=${HOME}"
( cd "$DOTFILES" && git config --local status.showUntrackedFiles no )
dot checkout
```
