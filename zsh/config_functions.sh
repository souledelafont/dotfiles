# wrapper function for loading an exterior config
# 1st arg is name, 2nd is sourcing cmd
loadconf () {
	printf "\e[2K\rLoading $1..."
	eval $2
	printf "$color_success Done$color_default"
}

# text printed right aligned with center of screen
right_align_center () {
	DELTA=$(echo "($(tput cols)/2-${#1})" | bc)
	printf "\r\e[2K%*s" $DELTA " "
	printf $1
}

endconf () {
	right_align_center "----------------------------------------------\n"
	right_align_center "----- finished configuring your shell 👌  -----\n"
	right_align_center "----------------------------------------------\n"
}
