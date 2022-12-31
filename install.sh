#!/bin/bash -ux

echo "start setup..."

for file in .gitconfig .config
do
	ln -s ${HOME}/${file} $file
done

echo "done!"
