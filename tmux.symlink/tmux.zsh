# Tmux sessions

if tmux ls 2>/dev/null 1>&2; then
	echo -n "Reloading tmux config..."
	tmux source ~/.tmux.conf 1>/dev/null
	echo " Done"
if [[ -z $TMUX ]]; then # if not in tmux show sessions
	echo "Currently running Tmux sessions:"
	tmux ls
fi
else
	echo "No currently running Tmux sessions !"
fi
