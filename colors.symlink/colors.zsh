# COLORS CONFIG

if [ -n "PS1" ]; then #if statement guards adding these helpers for non interactive shells
	eval "$(~/.colors/base16-shell/profile_helper.sh)"
fi

theme=monokai
variant=dark

echo -n 'Setting theme: base16_'"$theme"'_'"$variant"'...'
base16_"$theme"_"$variant"
echo " Done"
