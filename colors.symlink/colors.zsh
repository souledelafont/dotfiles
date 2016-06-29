# COLORS CONFIG

if [ -n "PS1" ]; then #if statement guards adding these helpers for non interactive shells
	echo -n "Loading color shortcuts..."
	eval "$(~/.colors/base16-shell/profile_helper.sh)"
	# loadconf "color helpers" '"$(~/.colors/base16-shell/profile_helper.sh)"'
fi
echo $success" Done"$normal

theme=isotope
variant=light

echo -n 'Setting colorscheme:'$info' base16_'"$theme"'_'"$variant$normal"'...'
base16_"$theme"_"$variant"
echo $success" Done"$normal

alias colortest="~/dotfiles/colors.symlink/base16-shell/colortest"
