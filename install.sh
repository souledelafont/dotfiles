#!/bin/zsh

echo "Doing dotfile links now..."
for dotfile in $(find $PWD -path "*/.git" -prune -o -name "*.ln" -print | sort);
do
	homelink=$HOME/.$(basename $(sed s/\.ln$// <<< $dotfile))
	echo "ln -sf $dotfile $homelink"
	rm -rf $homelink
	ln -sf $dotfile $homelink
done
echo "dotfile links done"

vim +PlugInstall +qall
echo "vim plugins done"
