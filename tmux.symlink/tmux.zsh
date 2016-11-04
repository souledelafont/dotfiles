# Tmux sessions
tmux attach -t base 2>/dev/null || tmux new -s base 2>/dev/null
if tmux ls 2>/dev/null 1>&2; then
	loadconf "tmux conf" "tmux source-file ~/.tmux.conf 1>/dev/null"
printf $info
if [[ -z $TMUX ]]; then # if not in tmux show sessions
	echo "Currently running Tmux sessions:"
	tmux ls
fi
printf $normal
else
	echo "No currently running Tmux sessions !"
fi

export PATH="$HOME/.tmux/plugins/tmuxinator/bin:$PATH"
