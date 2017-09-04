# COLORS CONFIG

if [ -n "$PS1" ]; then #if statement guards adding these helpers for non interactive shells
	loadconf "color shortcuts" "$(~/.colors/base16-shell/profile_helper.sh)"
	if [ -f "~/.base16_theme" ]; then
		loadconf "colorscheme" "source ~/.base16_theme"
	fi
fi

alias colortest="~/.colors/base16-shell/colortest"
