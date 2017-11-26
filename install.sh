#!/bin/zsh


echo "Doing dotfile links now..."
for dotfile in $(find $PWD -path "*/.git" -prune -o -name "*.ln" -print | sort);
do
	homelink=$HOME/.$(basename $(sed s/\.ln$// <<< $dotfile))
	echo "ln -sfF $homelink $dotfile"
	ln -sfF $dotfile $homelink
	ls -l $homelink
done
echo "dotfile links done"

# vim +PlugInstall
echo "vim plugins done"
