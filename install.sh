#!/bin/bash -ux

echo "start setup..."
cd $HOME

for file in .vimrc .gitconfig .gitignore .config
do
	[ ! -e $file ] && ln -s dotfiles/$file .
done

echo "done!"
