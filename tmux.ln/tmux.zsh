# Tmux sessions
if tmux ls 2>/dev/null 1>&2; then
	loadconf "tmux conf" "tmux source-file ~/.tmux.conf 1>/dev/null"
	if [[ -z $TMUX ]]; then # if not in tmux show sessions
		printf $color_info
		echo "\rCurrently running Tmux sessions:"
		tmux ls
		printf $color_default
	fi
else
	echo "No currently running Tmux sessions !"
fi

# tmux attach -t base 2>/dev/null || tmux new -s base 2>/dev/null

export PATH="$HOME/.tmux/plugins/tmuxinator/bin:$PATH"
