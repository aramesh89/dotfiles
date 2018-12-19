#!/bin/bash
#Dotfile install script

#vars
dotsdir=~/dotfiles
olddir=~/dotfiles_old
files=".vimrc .emacs.d"

#Removing old dotfiles then symlink new dots
echo "Creating $olddir for backup of existing dots"
mkdir -p $olddir
echo "Changing into $dotsdir"
cd $dotsdir
for file in $files; do
	echo "Moving existing dots into $olddir"
	mv ~/$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory"
	ln -s $dotsdir/$file ~/$file
done
