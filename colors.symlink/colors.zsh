# COLORS CONFIG

if [ -n "$PS1" ]; then #if statement guards adding these helpers for non interactive shells
	printf "Loading color shortcuts..."
	eval "$(~/.colors/base16-shell/profile_helper.sh)"
	printf $success" Done"$normal'\n'
	# loadconf "color shortcuts" '"$(~/.colors/base16-shell/profile_helper.sh)"'
fi


printf 'Setting colorscheme'
source ~/.base16_theme
printf $success" Done"$normal'\n'

alias colortest="~/dotfiles/colors.symlink/base16-shell/colortest"
