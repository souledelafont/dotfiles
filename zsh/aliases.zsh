alias la='ls -1hAp'
alias l='ls -1hp'
alias ll='ls -1lhp'
alias g='git'
alias fix-merge='$EDITOR `git diff --name-only | uniq`'
alias ed='ed -p"🔥 > "'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias checker='~/42/42FileChecker/42FileChecker.sh'
alias rez='source ~/.zshrc'
alias norm='~/.42/norm.sh'
alias rollback_header='~/.42/42rollback_header.sh'

leak() {
	while [ 1 ] ; do leaks $1 ;sleep 1 ;clear ; done
}
