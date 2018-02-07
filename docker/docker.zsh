alias d="docker"
alias dm="docker-machine"

dmstart () {
	export MACHINE_STORAGE_PATH="/tmp"
	docker-machine create default
	eval $(docker-machine env default)
}

drun-kernel () {
	docker run \
		$* \
		-v $HOME/dotfiles:/home/dev/dotfiles \
		-v $HOME/Documents:/home/dev/Documents \
		-it jzck/arch-kernel /usr/bin/zsh \
}
