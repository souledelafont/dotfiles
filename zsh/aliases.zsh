echo -n "Loading aliases..."
function gf(){
	gfortran $1 -o ${1:0:-3}x
}
alias l='ls -1p'
alias la='ls -1Ap'
echo " Done"
