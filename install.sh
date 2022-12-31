#!/bin/bash -ux

echo "start setup..."

for file in .gitconfig .config
do
	ln -s $file ${HOME}/${file}
done

echo "done!"
