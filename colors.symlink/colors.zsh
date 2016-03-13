# COLORS CONFIG

echo -n "Making color shortcuts..."
if [ -n "PS1" ]; then #if statement guards adding these helpers for non interactive shells
	eval "$(~/.colors/base16-shell/profile_helper.sh)"
fi
echo " Done"

theme=monokai
variant=dark

echo -n 'Setting colorscheme: base16_'"$theme"'_'"$variant"'...'
base16_"$theme"_"$variant"
echo " Done"

alias colortest="./dotfiles/colors.symlink/base16-shell/colortest"
