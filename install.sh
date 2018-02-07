#!/usr/bin/env zsh

echo "Doing dotfile links now..."
for dotfile in $(find $PWD -path "*/.git" -prune -o -name "*.ln" -print | sort);
do
	homelink=$HOME/.$(basename $(sed s/\.ln$// <<< $dotfile))
	rm -rf $homelink
	ln -sf $dotfile $homelink
	echo "ln -sf $dotfile $homelink"
done
echo "dotfile links done"

vim +PlugInstall +qall >/dev/null 2>&1
echo "vim plugins done"
