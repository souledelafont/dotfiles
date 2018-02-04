alias d="docker"
alias dm="docker-machine"

drun () {
	export MACHINE_STORAGE_PATH="/tmp"
	dm create default
	eval $(dm env default)
}

docker-run-ubuntu () {
	port=12345
	dn=192.168.99.100
	docker run -d \
		-e AUTHORIRIZED_GH_USERS="jzck"	\
		-p $dn:$port:22 \
		-v $HOME/Documents:/home/dev/Documents \
		jzck/ubuntu-dev
	printf "'ssh docker-ubuntu' to logon (%s:%s). mounted ~/Documents." $dn $port
}
