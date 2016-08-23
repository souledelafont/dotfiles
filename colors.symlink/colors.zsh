# COLORS CONFIG

if [ -n "$PS1" ]; then #if statement guards adding these helpers for non interactive shells
	printf "Loading color shortcuts..."
	eval "$(~/.colors/base16-shell/profile_helper.sh)"
	printf $success" Done"$normal'\n'
	# loadconf "color helpers" '"$(~/.colors/base16-shell/profile_helper.sh)"'
fi

variant=dark
theme=monokai
# theme=atelierforest

# variant=light
# theme=isotope
# theme=marrakesh

printf 'Setting colorscheme:'$info' base16_'"$theme"'_'"$variant$normal"'...'
base16_"$theme"_"$variant"
printf $success" Done"$normal'\n'

alias colortest="~/dotfiles/colors.symlink/base16-shell/colortest"
