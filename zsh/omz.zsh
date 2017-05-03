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
BULLETTRAIN_EXEC_TIME_ELAPSED=10
BULLETTRAIN_TIME_SHOW=false

BULLETTRAIN_DIR_BG='green'
BULLETTRAIN_DIR_FG='black'
BULLETTRAIN_DIR_EXTENDED=0
BULLETTRAIN_DIR_CONTEXT_SHOW=false
BULLETTRAIN_CONTEXT_SHOW=true
BULLETTRAIN_CONTEXT_BG='black'
BULLETTRAIN_CONTEXT_FG='red'

BULLETTRAIN_IS_SSH_CLIENT=$SSH_CLIENT
BULLETTRAIN_CONTEXT_HOSTNAME=$(echo $SSH_CONNECTION | awk '{print $3}')
BULLETTRAIN_CONTEXT_DEFAULT_USER=$(echo "jack\ntempow-jack" | grep --line-regexp --fixed-strings `whoami`)

BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_PROMPT_CHAR=''

plugins=(git history-substring-search)
BULLETTRAIN_PROMPT_ORDER=(
	context
	git
	dir
	cmd_exec_time
)

source $ZSH/oh-my-zsh.sh

unsetopt share_history # histories are attached to zsh instances
