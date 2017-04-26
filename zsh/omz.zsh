###############################
# install bullet-train        #
###############################

ZSH=$HOME/.oh-my-zsh

if [ ! -f $ZSH/themes/bullet-train.zsh-theme ]; then
	make -C $dotfilesdir/zsh/bullet-train-oh-my-zsh-theme install
fi

ZSH_THEME="bullet-train"
BULLETTRAIN_RUBY_SHOW='false'
BULLETTRAIN_VIRTUALENV_SHOW=false
BULLETTRAIN_VIRTUALENV_FG=black
BULLETTRAIN_EXEC_TIME_SHOW=true
BULLETTRAIN_EXEC_TIME_ELAPSED=2
BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_DIR_BG='green'
BULLETTRAIN_DIR_FG='black'
BULLETTRAIN_DIR_EXTENDED=0
BULLETTRAIN_DIR_CONTEXT_SHOW=false
# BULLETTRAIN_IS_SSH_CLIENT=$SSH_CLIENT
# BULLETTRAIN_CONTEXT_SHOW=false
BULLETTRAIN_CONTEXT_BG='magenta'
BULLETTRAIN_CONTEXT_FG='white'
# BULLETTRAIN_CONTEXT_HOSTNAME=$(echo $SSH_CONNECTION | awk '{print $3}')
BULLETTRAIN_CONTEXT_DEFAULT_USER=jack
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_PROMPT_CHAR=''

plugins=(git history-substring-search)

if [ -z ${SSH_CLIENT+x} ]; then
	BULLETTRAIN_PROMPT_ORDER=(
		git
		dir
		cmd_exec_time
	)
else
	BULLETTRAIN_PROMPT_ORDER=(
		context
		git
		dir
		cmd_exec_time
	)
fi

source $ZSH/oh-my-zsh.sh

unsetopt share_history # histories are attached to zsh instances
