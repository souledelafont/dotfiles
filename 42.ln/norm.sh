#!/bin/zsh

FG_GREEN="\033[32m"
FG_DEFAULT="\033[0m"

showLoading() {
	mypid=$!
	loadingText=$1

	echo -ne "$loadingText\r"

	while kill -0 $mypid 2>&-; do
		echo -ne "$loadingText.\r"
		sleep 0.5
		echo -ne "$loadingText..\r"
		sleep 0.5
		echo -ne "$loadingText...\r"
		sleep 0.5
		echo -ne "\r\033[K"
		echo -ne "$loadingText\r"
		sleep 0.5
	done
}

ARG=$1
if [ -z $ARG ]; then
	files=(`find . -type f -name "*.[c\|h]"`)
elif [ -d $ARG ]; then
	files=(`find $ARG -type f -name "*.[c\|h]"`)
elif [ -f $ARG ]; then
	files=($ARG)
fi
files=($files)

valid=0
for file in $files; do
	trap 'break' INT
	# output=$(norminette $file) 2>&-
	output=$(norminette $file & showLoading "waiting for norminette server" >&3) 3>&1
	if [ $(echo "$output" | wc -l | tr -d ' ') -gt 1 ]; then
		echo $output | pygmentize | less
	else
		valid=$(($valid+1))
	fi
done

echo -ne "\r\033[K"
printf $FG_GREEN"\rrecap: %i/%i files were normed"$FG_DEAULT"\n" $valid ${#files}
if [ $valid -eq ${#files} ]; then
	printf $FG_GREEN"congratz 👍 your norm is good"$FG_DEAULT"\n"
fi
