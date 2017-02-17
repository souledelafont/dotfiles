# COLORS CONFIG

if [ -n "$PS1" ]; then #if statement guards adding these helpers for non interactive shells
	loadconf "color shortcuts" "$(~/.colors/base16-shell/profile_helper.sh)"
	loadconf "colorscheme" "source ~/.base16_theme"
fi

alias colortest="~/dotfiles/colors.ln/base16-shell/colortest"
