function fff(){
	clear && gfortran && ./a.out
}

function cc(){
	clear && gcc -Wall -Wextra -Werror *.c && ./a.out
}

function ccc(){
	clear && gcc -Wall -Wextra -Werror *.c ../*.c
	./a.out
}
