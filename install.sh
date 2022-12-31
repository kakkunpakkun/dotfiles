#!/bin/bash -ux
SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo "start setup..."

ln -s ${SCRIPT_DIR}/.gitconfig ${HOME}/.gitconfig
ln -s ${SCRIPT_DIR}/.config/config.fish ${HOME}/.config/config.fish
ln -s ${SCRIPT_DIR}/.config/fish_plugins ${HOME}/.config/fish_plugins

echo "done!"
