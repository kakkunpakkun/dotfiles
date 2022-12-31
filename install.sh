#!/bin/bash -ux

echo "start setup..."

for file in .vimrc .gitconfig .gitignore .config
do
	[ ! -e $file ] && ln -s $file ${HOME}/${file}
done

echo "done!"
