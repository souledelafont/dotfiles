###############################
# install bullet-train        #
###############################

if [ ! -f $ZSH/themes/bullet-train.zsh-theme ]; then
	cd $dotfilesdir/zsh/bullet-train-oh-my-zsh-theme
	make install
fi

source $ZSH/oh-my-zsh.sh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bullet-train"
BULLETTRAIN_RUBY_SHOW='false'
BULLETTRAIN_VIRTUALENV_SHOW=false
BULLETTRAIN_VIRTUALENV_FG=black
BULLETTRAIN_EXEC_TIME_SHOW=true
BULLETTRAIN_EXEC_TIME_ELAPSED=2
BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_DIR_FG=black
BULLETTRAIN_DIR_EXTENDED=0
BULLETTRAIN_DIR_CONTEXT_SHOW=false
# BULLETTRAIN_CONTEXT_SHOW=true
BULLETTRAIN_CONTEXT_DEFAULT_USER=jack
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
plugins=(git history-substring-search)
BULLETTRAIN_PROMPT_ORDER=(
	cmd_exec_time
	git
	context
	dir
)
