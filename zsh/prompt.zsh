# lol
chgprompt () {
	BULLETTRAIN_PROMPT_CHAR=`python -c 'import random; print(random.choice(\
	["👍", \
	"🌀", "🍀", "🔥", "💎", "🌍", \
	"🐯", "🐙", "🐔", "🐤", "🐭", \
	"🍄", "🍟", \
	"🍋", \
	"🚚", "🚕", \
	"🔑", "💡", "🎃", \
	"☀️", "♻️", "➡️"]\
	))'`"  >"
}

prompt_agnoster_main() {
	RETVAL=$?
	CURRENT_BG='NONE'
	prompt_status
	# prompt_context
	prompt_virtualenv
	prompt_dir
	prompt_git
	prompt_end
}
zstyle ':prezto:module:utility' safe-ops no
setopt nocorrect

#terminals dont share history
setopt no_share_history
unsetopt share_history
