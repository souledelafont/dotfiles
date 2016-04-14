# COLORS CONFIG

echo -n "Loading color shortcuts..."
if [ -n "PS1" ]; then #if statement guards adding these helpers for non interactive shells
	eval "$(~/.colors/base16-shell/profile_helper.sh)"
fi
echo $success" Done"$normal
# loadconf "color helpers" 'if [ -n "PS1" ]; eval "$(~/.colors/base16-shell/profile_helper.sh)";fi'

theme=google
variant=dark

echo -n 'Setting colorscheme:'$info' base16_'"$theme"'_'"$variant$normal"'...'
base16_"$theme"_"$variant"
echo $success" Done"$normal

alias colortest="~/dotfiles/colors.symlink/base16-shell/colortest"
