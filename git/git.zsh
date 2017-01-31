# core and user
git config --global user.name "Jack Halford"
git config --global user.email jack@crans.org
git config --global core.excludesfile ~/.gitexclude
git config --global core.editor "vim"

# push only current branch, "matching" would push all matching branches
git config --global push.default current

# aliases
git config --global alias.co commit
git config --global alias.s "status --short"
git config --global alias.lg1 "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
