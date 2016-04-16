# Tmux sessions
if tmux ls 2>/dev/null 1>&2; then
	loadconf "tmux conf" "tmux source ~/.tmux.conf 1>/dev/null"

echo $info
if [[ -z $TMUX ]]; then # if not in tmux show sessions
	echo "Currently running Tmux sessions:"
	tmux ls
fi
echo $normal
else
	echo "No currently running Tmux sessions !"
fi
